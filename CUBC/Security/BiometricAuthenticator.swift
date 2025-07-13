//
//  BiometricAuthenticator.swift
//  CUBC
//
//  Created by JoshipTy on 7/7/25.
//

import LocalAuthentication

class Authenticator: ObservableObject {
    @Published var isAuthenticated = false

    func authenticate(completion: @escaping (Bool) -> Void) {
        let context = LAContext()
        var error: NSError?

        // Check if device supports biometric authentication
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "Face ID is required to access this feature."
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                DispatchQueue.main.async {
                    self.isAuthenticated = success
                    completion(success)
                }
            }
        } else {
            // Fallback: device doesn't support Face ID
            DispatchQueue.main.async {
                completion(false)
            }
        }
    }
}
