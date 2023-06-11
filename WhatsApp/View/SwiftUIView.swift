//
//  SwiftUIView.swift
//  WhatsApp
//
//  Created by Lara K on 21/11/1444 AH.
//





//
//import SwiftUI
//import UIKit
//import PhoneNumberKit
//
//struct PhoneNumberTextFieldView: UIViewRepresentable {
//    @Binding var phoneNumber: String
//    private let textField = PhoneNumberTextField()
// 
//    func makeUIView(context: Context) -> PhoneNumberTextField {
//        textField.withExamplePlaceholder = true
//        //textField.font = UIFont(name: GlobalConstant.paragraphFont.rawValue, size: 17)
//        textField.withFlag = true
//        textField.withPrefix = true
//        // textField.placeholder = "Enter phone number"
//        textField.becomeFirstResponder()
//        return textField
//    }
//
//    func getCurrentText() {
//        self.phoneNumber = textField.text!
//    }
//    
//    func updateUIView(_ view: PhoneNumberTextField, context: Context) {
//  
//    }
//    
//}
//
//struct SignUpSignInView: View {
//    @State private var phoneNumber = String()
//    @State private var validationError = false
//    @State private var errorDesc = Text("")
//    @State private var phoneField: PhoneNumberTextFieldView?
//    let phoneNumberKit = PhoneNumberKit()
//
//    var body: some View {
//        ZStack {
//            VStack(alignment: .leading) {
//                Text("Sign in with your phone number")
//                
//                self.phoneField
//                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 60)
//                    .keyboardType(.phonePad)
//                
//                Button(action: {
//                    do {
//                        self.phoneField?.getCurrentText()
//                        print("phone is: \(self.phoneNumber)")
//                        let validatedPhoneNumber = try self.phoneNumberKit.parse(self.phoneNumber)
//                        print("Validated Number: \(validatedPhoneNumber)")
//                        // Integrate with your login/registration system here...
//                    }
//                    catch {
//                        self.validationError = true
//                        self.errorDesc = Text("Please enter a valid phone number")
//                    }
//
//                }) {
//                    Text("Sign in")
//                }
//                .padding(15)
//                Spacer()
//            }
//            .padding()
//            .onAppear {
//                self.phoneField = PhoneNumberTextFieldView(phoneNumber: self.$phoneNumber)
//            }
//            .alert(isPresented: self.$validationError) {
//                Alert(title: Text(""), message: self.errorDesc, dismissButton: .default(Text("OK")))
//            }
//        }
//    }
//}
//
//struct SwiftUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        PhoneNumberTextFieldView()
//    }
//}
