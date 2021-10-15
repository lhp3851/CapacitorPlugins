import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(CapacitorPluginsPlugin)
public class CapacitorPluginsPlugin: CAPPlugin {
    private let implementation = CapacitorPlugins()
    
    private let logPlugin = LoggerPlugin()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
    
    @objc func log(call: CAPPluginCall) {
        if let options = call.options {
            call.resolve(["params": logPlugin.log(params: options)])
        } else {
            print("no params!")
        }
    }
}
