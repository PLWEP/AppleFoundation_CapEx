//
//  Camera.swift
//  dummyProject
//
//  Created by PLWEP on 10/04/23.
//

import SwiftUI

struct Camera: View {
    
    @State private var isFlash = false
    @State private var isMenu = false
    
    var body: some View {
        NavigationStack {
            VStack{
                HStack(spacing: 0) {
                    Button(action: {
                        isFlash = !isFlash
                    }, label: {
                        Image(systemName: isFlash ? "bolt.circle" : "bolt.slash.circle")
                            .resizable()
                            .frame(width: 25,height: 25)
                            .foregroundColor(.white)
                    })
                    Spacer()
                    Button(action: {
                        withAnimation {
                            isMenu.toggle()
                        }
                    }, label: {
                        Image(systemName: isMenu ? "chevron.up.circle" : "chevron.down.circle")
                            .resizable()
                            .frame(width: 25,height: 25)
                            .foregroundColor(.white)
                    })
                    Spacer()
                    Image(systemName: "globe")
                        .resizable()
                        .frame(width: 25,height: 25)
                }
                .padding(10)
                .frame(height: 80)
                ZStack (alignment: .bottom) {
                    Group {
                        Image("dummyImage")
                            .resizable()
                            .frame(height: isMenu ? 558: 578)
                            .padding(.top, isMenu ? -60 : 0)
                            .scaledToFit()
                    }
                    .frame(height : 578)
                    
                    Group {
                        Rectangle()
                            .frame(maxWidth: .infinity, maxHeight: isMenu ? 75 : 0)
                        HStack {
                            Button {
                                //
                            } label: {
                                Text("ISO")
                                    .font(.system(size: 12))
                                    .padding(.horizontal, 17)
                                    .padding(.vertical, 20)
                                    .background(.gray)
                                    .foregroundColor(.white)
                                    .cornerRadius(50)
                            }
                            Spacer()
                            Button {
                                //
                            } label: {
                                Image(systemName: "figure.walk")
                                    .resizable()
                                    .frame(width: 20,height: 20)
                                    .foregroundColor(.white)
                                    .padding(15)
                                    .background(.gray)
                                    .cornerRadius(50)
                            }
                            Spacer()
                            Button {
                                //
                            } label: {
                                Image(systemName: "camera.aperture")
                                    .resizable()
                                    .frame(width: 20,height: 20)
                                    .foregroundColor(.white)
                                    .padding(15)
                                    .background(.gray)
                                    .cornerRadius(50)
                            }
                            Spacer()
                            Button {
                                //
                            } label: {
                                Image(systemName: "camera.filters")
                                    .resizable()
                                    .frame(width: 20,height: 20)
                                    .foregroundColor(.white)
                                    .padding(15)
                                    .background(.gray)
                                    .cornerRadius(50)
                            }
                        }
                        .padding([.trailing, .leading], 10)
                    }
                    .opacity(isMenu ? 1 : 0)
                }
                HStack {
                    NavigationLink {
                        Gallery()
                    } label: {
                        Image(systemName: "photo")
                            .resizable()
                            .frame(width: 50,height: 45)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Button(action: {
                        // ...
                    }, label: {
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 70,height: 70)
                            .padding(5)
                            .overlay(
                                RoundedRectangle(cornerRadius: 50)
                                    .stroke(.white, lineWidth: 2)
                            )
                            .foregroundColor(.white)
                    })
                    Spacer()
                    Image(systemName: "photo")
                        .resizable()
                        .frame(width: 50)
                }
                .frame(maxHeight: .infinity)
                .padding(10)
            }
            .frame(maxHeight: .infinity)
            .background(.black)
        }
    }
}

struct Camera_Previews: PreviewProvider {
    static var previews: some View {
        Camera()
    }
}
