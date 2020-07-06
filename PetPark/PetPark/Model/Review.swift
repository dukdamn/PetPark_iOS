//
//  Review.swift
//  PetPark
//
//  Created by 황정덕 on 2020/01/17.
//  Copyright © 2020 Gitbot. All rights reserved.
//

import Foundation

struct CafeReview {
  let cafeName: String
  var avgScore: Double
  let cafes: [Review]
}
struct PensionReview {
  let pensionName: String
  var avgScore: Double
  let pensions: [Review]
}

struct Review {
  let name: String
  let detail: String
  let date: String
  let imageName: String
}

let cafeReview: [CafeReview] = [
  CafeReview(
    cafeName: "스톤애견풀빌라",
    avgScore: 4.3,
    cafes: [
        Review(name: "아이유",
               detail: "애들도 너무 귀엽구 다 너무 착해요ㅠㅡㅜ 강아지냄새도 안 나고 엄청 넓어서 강아지들이랑 놀기 좋은 곳이에요! 음료수도 엄청 맛있고 사장님도 엄청 친절하게 설명 잘해주세요ㅎㅎ 재밌게 잘 놀다갑니다!", date: "2020년 1월 15일", imageName: "cafePerson1"),
        Review(name: "예지",
               detail: "애견을 좋아하는 사람이라면 누구나 한번쯤은 가기좋은공간입니다. 댕댕이들도 많고 너무귀여워요~", date: "2020년 1월 1일", imageName: "cafePerson2"),
        Review(name: "리아",
               detail: "저녁쯤에 방문해서 그런지 아이들이 기운이 없고 누워만 있더라구요 그래도 다른 애견카페보단 댕댕이들이 많은 것 같아요", date: "2019년 12월 25일", imageName: "cafePerson3"),
        Review(name: "류진",
               detail: "왕푸들이 있어요! 냥이방도 따로 있어서 좋았어요 강지들 쉬냄새 안나고 깨끗한데 간식을 사서 줄 수 있어서 간식 없으면 눈길 한 번 못받아요ㅜ 그치만 보기만해도 귀여워쥬금,,", date: "2019년 12월 20일", imageName: "cafePerson4"),
        Review(name: "채령",
               detail: "너무 예쁘고 귀여워용♡♡♡", date: "2019년 12월 15일", imageName: "cafePerson5"),
        Review(name: "유나",
               detail: "강아지들도 너무 귀엽고 좋았는데 생리하는 강아지가 무릎에 앉아서 피가 옷에 묻어서 난감했습니다 강아지들이 친화력이 좋아서 양반다리하면 무릎에 와서 앉아요 너무 귀야워요", date: "2019년 12월 15일", imageName: "cafePerson6"),
        Review(name: "지수",
               detail: "아기도음료시켜야한대요,...ㅜㅜ 보통다른곳들은36개월미만 영유아들은 무료인데... ", date: "2019년 12월 13일", imageName: "cafePerson7"),
        Review(name: "제니",
               detail: "귀여운 강아지들과 실컷 놀았습니다. 쾌적합니다.", date: "2019년 11월 29일", imageName: "cafePerson8"),
        Review(name: "로제",
               detail: "애들도 너무 귀엽구 다 너무 착해요ㅠㅡㅜ 강아지냄새도 안 나고 엄청 넓어서 강아지들이랑 놀기 좋은 곳이에요! 음료수도 엄청 맛있고 사장님도 엄청 친절하게 설명 잘해주세요ㅎㅎ 재밌게 잘 놀다갑니다!", date: "2019년 11월 25일", imageName: "cafePerson9"),
        Review(name: "리사",
               detail: "재방문의사백개", date: "2019년 11월 21일", imageName: "cafePerson10"),
        Review(name: "나연",
               detail: "여기카페 부킹천국일세~~^^", date: "2019년 11월 20일", imageName: "cafePerson11"),
        Review(name: "정연",
               detail: "3살 소심한 로키랑 자주 놀러갑니다. 소형견 전용이라 분위기 좋고 야외테라스도 있어 오늘같이 미세먼지 많은 날 산책대신 딱입니다. #애견까페", date: "2019년 11월 17일", imageName: "cafePerson12"),
        Review(name: "모모",
               detail: "좀 아담하지만 포토존에서 사진찍기 놀이도 하고... 무엇보다 우리 소심이가 편안하게 잘 돌아다니네요. 친절하고... 좋았어요", date: "2019년 11월 15일", imageName: "cafePerson13"),
        Review(name: "사나",
               detail: "생각보다 좁기도하고 별다른 카운터가 없어서 들어가면 안내받는건 없을 뿐더러 말이 아다르고 어다른데 강아지 훈육에 관한 말이였는데 그 말한마디에 기분이 엄청 나쁘네요", date: "2019년 11월 10일", imageName: "cafePerson14"),
    ])
]



let pensionReview: [PensionReview] = [
  PensionReview(
    pensionName: "스톤애견풀빌라",
    avgScore: 4.3,
    pensions: [
        Review(name: "랩몬스터",
               detail: "괜찮은대 청소 상태가 별루네요", date: "2020년 1월 15일", imageName: "pensionPerson1"),
        Review(name: "김석진",
               detail: "전체적으로 무난무난하니 괜찮았어요 그리고 뷰맛집이에요~", date: "2020년 1월 13일", imageName: "pensionPerson2"),
        Review(name: "슈가",
               detail: "풀빌라가 사진상으로는 그렇게 커보이지않았는데 막상 보니까 생각보다 길쭉하고 넓더라구요 ㅋㅋ 미온수 신청안했으면 후회할뻔했어요 ", date: "2020년 1월 11일", imageName: "pensionPerson3"),
        Review(name: "제이홉",
               detail: "처음 와 보는데, 생각보다 시설이 좋았습니다 복층으로 되어 이층에 별도의 티비가 있다보니, 아이들 닌텐도 하기에 좋더군요 테라스에도 강아지가 나갈 수 없도록 꼼꼼히 막혀 있어 같이 놀기 좋았습니다", date: "2020년 1월 5일", imageName: "pensionPerson4"),
        Review(name: "지민",
               detail: "친절하고 깔끔한 방 매우 만족이에요:)", date: "2020년 1월 1일", imageName: "pensionPerson5"),
        Review(name: "뷔",
               detail: "시설은 되게 예쁘고 좋았습니다. 다만 청소인원이 바뀌셨다고 했는데, 조금 더 시설물 관리 등을 신경써주시면 좋은 펜션이 될 것 같습니다. 사업번창하세요.", date: "2019년 12월 29일", imageName: "pensionPerson6"),
        Review(name: "정국",
               detail: "처음에 안내받았던 방은 시설도 그렇고 와이파이 인터넷 등등 문제가 좀 있어서 문의드렸더니 독채로 바꿔주셨어요! 뜻밖에이득을봐서 넘조아씁니당 :)", date: "2019년 12월 25일", imageName: "pensionPerson7"),
        Review(name: "박진영",
               detail: "만족하고 놀다가 왔어요 근데 한가지 맘에 들지 않은 점은 욕실에 온수가 나오지 않아서 씻는데 불편함이 있었습니다.", date: "2019년 12월 23일", imageName: "pensionPerson8"),
        Review(name: "염따",
               detail: "미온수신청했는데 온도가 24시간 계속 유지되진않지만 수온은 적당했던거 같아용 객실도 뭐 이정도면 괜찮았어요", date: "2019년 12월 20일", imageName: "pensionPerson9"),
        Review(name: "장범준",
               detail: "전반적으로 기대했던 것보다 깔끔했고 침구류와 수건에서도 피죤냄새가 많이나서 좋았습니다^^ 방도 계속 따뜻했고 너무 즐거운 시간 보내고 왔습니다!^^ 다음번에 재이용할께요! ^^", date: "2019년 12월 15일", imageName: "pensionPerson10"),
        Review(name: "MC몽",
               detail: "아기랑 강아지랑 갔는데 괜찮았어요. 다만..빨래를 하셨겠지만..이불에 강아지털이 너무 많았어요..", date: "2019년 12월 12일", imageName: "pensionPerson11"),
        Review(name: "잔나비",
               detail: "작년에 한번 방문하고 이번에 두번째 방문했습니다 직원분들은 여전히 친절하시구 객실상태도 좋아요 :)", date: "2019년 12월 5일", imageName: "pensionPerson12"),
        Review(name: "박효신",
               detail: "너무너무 좋습니다~~~ 온수추가 가격이 비싸서 조금 아뿔싸지만 친절하시고 깨끗한편리고 가평에서 찾기힘든 개별수영장이라 너무재밋게 놀고왔어요~~", date: "2019년 11월 10일", imageName: "pensionPerson13"),
        Review(name: "박제범",
               detail: "수영장은 좋았는데 구내시설은 막 좋진않아요", date: "2019년 11월 1일", imageName: "pensionPerson14"),
    ])
]
