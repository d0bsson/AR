//
//  SegmentedPicker.swift
//  AR
//
//  Created by Дэвид Бердников on 27.12.2022.
//

import SwiftUI

enum PropretesCard: String, Codable, CaseIterable {
    case technical = "Характеристики"
    case reviews = "Отзывы"
    case vendor = "Производитель"
    
    var label: String {
        switch self {
        case .technical:
            return "Характеристики"
        case .reviews:
            return "Отзывы"
        case .vendor:
            return "Производитель"
        }
    }
}

struct SegmentedPicker: View {
    @State private var proprety: PropretesCard = .technical
    
    let technical = "Технические характеристики"
    let reviews = "Окно отвывов"
    let vendor = "Описание производителя"
    
    var body: some View {
        VStack(spacing: 5) {
            
            HStack() {
                ForEach(PropretesCard.allCases, id: \.self ) { proprety in
                    Button {
                        self.proprety = proprety
                    } label: {
                        Text(proprety.label)
                            .font(fontLight16)
                            .lineLimit(1)
                            .minimumScaleFactor(0.70)
                            .foregroundColor(self.proprety == proprety ? .cyanAR : .blackAR)
                            .padding(.vertical, 10)
                            .background(
                                RoundedRectangle(cornerRadius: 8)
                                    .foregroundColor(self.proprety == proprety ? .cyanAR.opacity(0.1) : .whiteAR)
                            )
                    }
                    .padding(.horizontal)
                }
            }
            .padding(.vertical, 15)
            switch proprety {
            case .technical:
                Technical()
            case .reviews:
                Text(reviews)
                    .font(fontLight16)
                    .lineLimit(10)
                    .minimumScaleFactor(0.90)
                    .foregroundColor(.blackAR)
            case .vendor:
                Text(vendor)
                    .font(fontLight16)
                    .lineLimit(10)
                    .minimumScaleFactor(0.90)
                    .foregroundColor(.blackAR)
            }
        }
    }
}


struct train_Previews: PreviewProvider {
    static var previews: some View {
        SegmentedPicker()
    }
}
