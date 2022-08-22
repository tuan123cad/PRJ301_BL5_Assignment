/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Feature;
import model.Role;

/**
 *
 * @author buidu_8h8ybgq
 */
public class AccountDBContext extends DBContext {

    public Account getAccount(String username, String password) {
        try {
            String sql = "SELECT * \n"
                    + "  FROM [Account]\n"
                    + "  WHERE [username] = ?\n"
                    + "  AND [password] = ?";

            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Account account = new Account();
                account.setUsername(username);
                account.setId(rs.getInt(1));
                account.setTeaId(rs.getInt(4));
                return account;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Role> getRolesByAccId(int AccId) {
        ArrayList<Role> roles = new ArrayList<>();
        try {
            String sql = "SELECT \n"
                    + "  r.id as roleId,r.name as roleName, ISNULL(f.id, -1) as feaId, f.url \n"
                    + "FROM \n"
                    + "  [Role Account] ra \n"
                    + "  LEFT JOIN [Role] r ON ra.roleId = r.id \n"
                    + "  LEFT JOIN [Role Feature] rf ON rf.roleId = r.id \n"
                    + "  LEFT JOIN [Feature] f ON f.id = rf.feaId \n"
                    + "WHERE \n"
                    + "  ra.accId = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, AccId);
            ResultSet rs = ps.executeQuery();
            Role currentRole = new Role();
            currentRole.setId(-1);
            while (rs.next()) {
                int rid = rs.getInt("roleId");
                if (rid != currentRole.getId()) {
                    currentRole = new Role();
                    currentRole.setId(rid);
                    currentRole.setName(rs.getString("roleName"));
                    currentRole.setFeatures(new ArrayList<>());
                    roles.add(currentRole);
                }
                int fid = rs.getInt("feaId");
                if (fid != -1) {
                    Feature f = new Feature();
                    f.setId(rs.getInt("feaId"));
                    f.setUrl(rs.getString("url"));
                    currentRole.getFeatures().add(f);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }

        return roles;
    }

}
