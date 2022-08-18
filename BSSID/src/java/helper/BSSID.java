/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package helper;

import jakarta.websocket.Endpoint;
import java.util.Arrays;

/**
 *
 * @author buidu_8h8ybgq
 */
public class BSSID {
    public static byte[] getGatewayHardware() {
 return Endpoint.parseMacAddress(mWifiInfo.getBSSID());
}
    
    public static void main(String[] args) {
        System.out.println(Arrays.toString(getGatewayHardware()));
    }
}
