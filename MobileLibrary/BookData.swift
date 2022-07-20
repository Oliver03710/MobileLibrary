//
//  BookData.swift
//  MobileLibrary
//
//  Created by Junhee Yoon on 2022/07/20.
//

import Foundation

struct Books {
    var title: String
    var author: String
    var publisher: String
}

struct BookInfo {
    let book: [Books] = [
        Books(title: "기분이 태도가 되지 않게", author: "레몬 심리", publisher: "갤리온"),
        Books(title: "다섯번째 산", author: "파울로 코엘료", publisher: "문학동네"),
        Books(title: "달러구트 꿈 백화점", author: "이미예", publisher: "팩토리나인"),
        Books(title: "미드나잇 라이브러리", author: "메트 헤이그", publisher: "인플루엔셜"),
        Books(title: "소크라테스 익스프레스", author: "에릭 와이너", publisher: "어크로스"),
        Books(title: "아몬드", author: "손원평", publisher: "창비"),
        Books(title: "오늘 밤, 세계에서 이 사랑이 사라진다 해도", author: "이치조 미사키", publisher: "모모"),
        Books(title: "완전한 행복", author: "정유정", publisher: "은행나무"),
        Books(title: "인간 실격", author: "다자이 오사무", publisher: "민음사"),
        Books(title: "질서 너머", author: "조던 피터슨", publisher: "웅진지식하우스")]
}

