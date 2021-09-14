//
//  ContentView.swift
//  matchedGeometryeffect
//
//  Created by shenxiaohai on 2021/9/14.
//

import SwiftUI

struct ContentView: View {
    @State private var expand = false
    @Namespace private var shapeTransition
    @State private var swap = false
    @Namespace private var dotTransition

    var body: some View {
        // 写法1
//        Circle()
//            .fill(Color.blue)
//            .frame(width: expand ? 300 : 150, height: expand ? 300 : 150)
//            .offset(y: expand ? -100 : 0)
//            .animation(.default)
//            .onTapGesture {
//                self.expand.toggle()
//            }
        // 写法2
//         if expand {
//             Circle()
//                 .fill(Color.green)
//                 .matchedGeometryEffect(id: "circle", in: shapeTransition)
//                 .frame(width: 300, height: 300)
//                 .offset(y: -100)
//                 .animation(.default)
//                 .onTapGesture {
//                     self.expand.toggle()
//                 }
//         } else {
//             Circle()
//                 .fill(Color.green)
//                 .matchedGeometryEffect(id: "circle", in: shapeTransition)
//                 .frame(width: 150, height: 150)
//                 .offset(y: 0)
//                 .animation(.default)
//                 .onTapGesture {
//                     self.expand.toggle()
//                 }
//         }
//        // 形状变换
//        if expand {
////            Spacer()
//
//            RoundedRectangle(cornerRadius: 50.0)
//                .matchedGeometryEffect(id: "circle", in: shapeTransition)
//                .frame(minWidth: 0, maxWidth: .infinity, maxHeight: .infinity)
////                .padding()
//                .foregroundColor(Color(.systemGreen))
//                .animation(.easeIn)
//                .onTapGesture {
//                    expand.toggle()
//                }
//        } else {
//            RoundedRectangle(cornerRadius: 50.0)
//                .matchedGeometryEffect(id: "circle", in: shapeTransition)
//                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//                .padding()
//                .foregroundColor(Color(.systemOrange))
//                .animation(.easeIn)
//                .onTapGesture {
//                    expand.toggle()
//                }
//            Spacer()
//        }

        // 交换小球
        if swap {
            HStack {
                Circle()
                    .fill(Color.green)
                    .frame(width: 30, height: 30)
                    .matchedGeometryEffect(id: "greenCircle", in: dotTransition)

                Spacer()

                Circle()
                    .fill(Color.orange)
                    .frame(width: 30, height: 30)
                    .matchedGeometryEffect(id: "orangeCircle", in: dotTransition)
            }
            .frame(width: 100)
            .animation(.linear)
            .onTapGesture {
                swap.toggle()
            }
        } else {
            HStack {
                Circle()
                    .fill(Color.orange)
                    .frame(width: 30, height: 30)
                    .matchedGeometryEffect(id: "orangeCircle", in: dotTransition)

                Spacer()

                Circle()
                    .fill(Color.green)
                    .frame(width: 30, height: 30)
                    .matchedGeometryEffect(id: "greenCircle", in: dotTransition)
            }
            .frame(width: 100)
            .animation(.linear)
            .onTapGesture {
                swap.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
