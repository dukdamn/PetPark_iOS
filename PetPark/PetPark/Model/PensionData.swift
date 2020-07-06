//
//  PensionData.swift
//  PetPark
//
//  Created by 황정덕 on 2020/01/16.
//  Copyright © 2020 Gitbot. All rights reserved.
//

import Foundation

import Foundation

struct Pension {
  let name: String
  let location: String
  let imageName: String
  let siteName: String
  let phoneName: String
  let pensionDetail: String
}

struct PetPension {
  let category: String
  let pensions: [Pension]
}


let pensionData: [PetPension] = [
  PetPension(category: "애견펜션", pensions: [
    Pension(name: "스톤애견풀빌라", location: "경기 가평군 조종면 현등사길 55-231", imageName: "pension1",
            siteName: "https://store.naver.com/accommodations/detail?entry=pbl&id=1285629759&matchSidRoomIds=2866643%2C2866668%2C2866673%2C2866675%2C2866676%2C2866686%2C2866694%2C2866700%2C2866703%2C2866709%2C2866725%2C3247782%2C2865938%2C2866730%2C2866606%2C2866732%2C2866612%2C2866741%2C2866616%2C2866746%2C2866621%2C2866758%2C2866624%2C2866763%2C2866633%2C2866636&query=%EC%8A%A4%ED%86%A4%EC%95%A0%EA%B2%AC%ED%92%80%EB%B9%8C%EB%9D%BC", phoneName: "01092117741",
            pensionDetail: "안녕하세요~~ 귀여운 멍멍이들 24마리와 놀러온 친구들까지 모두 모여 수영장 파티를 하는 귀요미 애견 펜션이에요!! 놀러온 친구들 모두 행복해 한답니다 ㅎㅎ"),
    Pension(name: "하루강아지애견펜션", location: "경기 가평군 상면 수목원로386번길 12-17", imageName: "pension2", siteName: "https://store.naver.com/accommodations/detail?entry=pbl&id=1382820761&matchSidRoomIds=3121096%2C3121099%2C3114064%2C3120401%2C3120404%2C3120405%2C3114205%2C3120407%2C3120961%2C3121051%2C3121055%2C3121057%2C3121061%2C3121062%2C3113848%2C3120409%2C3120410%2C3121159%2C3121064&query=%ED%95%98%EB%A3%A8%EA%B0%95%EC%95%84%EC%A7%80%EC%95%A0%EA%B2%AC%ED%8E%9C%EC%85%98", phoneName: "01089352459", pensionDetail: "기본 요리도구 완비, 강아지 산책 준비물 완비, 기저귀 지급, 강아지들이 뛰어놀 잔디밭도 있어요 ㅎㅎ"),
    Pension(name: "벨르앙쥬애견펜션", location: "경기 가평군 상면 임초밤안골로 269-14", imageName: "pension3", siteName: "https://store.naver.com/accommodations/detail?entry=pbl&id=1040726839&matchSidRoomIds=2886314%2C2886332%2C2886338%2C2886339%2C2886341%2C2886342%2C2886344%2C2886299%2C2886308%2C2886309%2C2886310%2C2886311%2C2886312%2C2886313&query=%EB%B2%A8%EB%A5%B4%EC%95%99%EC%A5%AC%EC%95%A0%EA%B2%AC%ED%8E%9C%EC%85%9", phoneName: "01043883011", pensionDetail: "반려견과 함께하는 애견풀빌라 펜션 사랑하는 반려견과의 소중하고 행복한 추억을 위한 스톤애견 풀빌라만의 특별함을 만나보세요"),
    Pension(name: "퀸스타운애견펜션", location: "경기 양평군 단월면 석산로 1539-10", imageName: "pension4", siteName: "https://store.naver.com/accommodations/detail?entry=pbl&id=1308339764&matchSidRoomIds=2988453%2C2988422%2C3000735%2C2988463%2C2988503%2C3009782%2C2988514&query=%ED%80%B8%EC%8A%A4%ED%83%80%EC%9A%B4%EC%95%A0%EA%B2%AC%ED%8E%9C%EC%85%98", phoneName: "01033695618", pensionDetail: "엘리스 산장 애견 전용 민박 펜션이예요~ 다양한 방이 있으니 홈페이지로 구경오세요~ 손님들에게 계란 무료제공 서비스와 24시간 오픈된 매점 운영을 합니다. 맘껏 뛰고 놀 애견 운동장도 있어요~"),
    Pension(name: "꼬로몽 애견펜션", location: "강원 양양군 서면 원당골길 111", imageName: "pension5", siteName: "https://store.naver.com/accommodations/detail?entry=pbl&id=1318534345&matchSidRoomIds=3033293%2C3036337%2C3036338%2C3036340&query=%EA%BC%AC%EB%A1%9C%EB%AA%BD%20%EC%95%A0%EA%B2%AC%ED%8E%9C%EC%85%98", phoneName: "01030308817", pensionDetail: "저희 포천달빛글램핑은 계곡과 개울을 따라 캠핑사이트를 구성혀 일상의 번거로움과 심신의 스트레스를 벗고 어린이와 어른이 함께하며 자연속에서 편안한 휴식과 활력을 충전하여 행복한 시간을 갖을 수 있는 여러분의 휴식처가 될 수 있도록 더욱 노력할 것을 약속드립니다."),
    Pension(name: "솔푸른향기 애견펜션", location: "충남 태안군 안면읍 수해길 85-71", imageName: "pension6", siteName: "https://store.naver.com/accommodations/detail?entry=pbl&id=37642177&matchSidRoomIds=3169422%2C3169433%2C3169435%2C3169444%2C3169450%2C3169456%2C3169460%2C3169471%2C3169476&query=%EC%86%94%ED%91%B8%EB%A5%B8%ED%96%A5%EA%B8%B0%20%EC%95%A0%EA%B2%AC%ED%8E%9C%EC%85%98", phoneName: "01030705929", pensionDetail: "고객님들의 행복한 휴가를위해 더욱 노력하는 하루강아지펜션이되겠습니다 저희 하루강아지 펜션에 오셔서 달콤한 추억을 만들고가세요~^"),
    Pension(name: "도담도담애견펜션", location: "충남 태안군 안면읍 삼봉길 116", imageName: "pension7", siteName: "https://store.naver.com/accommodations/detail?entry=pbl&id=881048629&matchSidRoomIds=2578638%2C2578631%2C2578633%2C2578603%2C2578627%2C2578642&query=%EB%8F%84%EB%8B%B4%EB%8F%84%EB%8B%B4%EC%95%A0%EA%B2%AC%ED%8E%9C%EC%85%98", phoneName: "01083150611", pensionDetail: "강아지를 위한 다양한 시설과 2인 원룸형의 커플 객실부터 거실과 방으로 구성된 가족형의 다양한 객실까지 퍼피79 펜션은 이 모든 걸 충분히 갖추어 놓고 여러분을 맞이하고 있습니다."),
    Pension(name: "슈가몽 애견펜션", location: "충남 태안군 안면읍 방죽길 106", imageName: "pension8", siteName: "https://store.naver.com/accommodations/detail?entry=pbl&id=1147800653&matchSidRoomIds=3134879%2C3134880%2C3134884%2C3134889%2C3134893%2C3134895&query=%EC%8A%88%EA%B0%80%EB%AA%BD%20%EC%95%A0%EA%B2%AC%ED%8E%9C%EC%85%98", phoneName: "01022725879", pensionDetail: "동해바다 펜션중에  바다와 제일 가까운 펜션 바다빛무지개 펜션입니다. 전객실테라스에 동해바다가 한눈에 들어오고 남애항이 코앞에 위치해 있습니다. 낚시대와 자전거 무료대여가능해서 선상낚시와 해안산책코스를 자전거로 즐길수가 있습니다 ^^"),
    Pension(name: "라온애견펜션", location: "충남 태안군 남면 진산1길 229-76", imageName: "pension9", siteName: "https://store.naver.com/accommodations/detail?entry=pbl&id=1882558637&matchSidRoomIds=2836111%2C2836138%2C2836192%2C2836195%2C2836193&query=%EB%9D%BC%EC%98%A8%EC%95%A0%EA%B2%AC%ED%8E%9C%EC%85%98", phoneName: "01032611830", pensionDetail: "자연 경관 및 아름다운 강 이 어우려져 있는 애견 테마 타운하우스 또또멍 펜션 입니다. 애완견동반 입실이 가능하며 소형견 중형견 대형견 모든 견종이 이용 가능합니다."),
    Pension(name: "아지트애견펜션", location: "강원 홍천군 북방면 노일로 524-21", imageName: "pension10", siteName: "https://store.naver.com/accommodations/detail?entry=pbl&id=1988111442&matchSidRoomIds=3164549%2C3164553%2C3164556%2C3164528%2C3164532%2C3164535%2C3164543&query=%EC%95%84%EC%A7%80%ED%8A%B8%EC%95%A0%EA%B2%AC%ED%8E%9C%EC%85%98", phoneName: "01091837372", pensionDetail: "사계절 아름다운 풍경을 담는 프라이빗한 공간 야외시설 중 캠핑테마로 바베큐를 즐기며 연인,가족,단체,모임에서 소중한 추억을 만들어보세요"),
    Pension(name: "프리미엄 애견풀빌라", location: "경기 가평군 조종면 현등사길 55-231", imageName: "pension11", siteName: "https://store.naver.com/accommodations/detail?entry=pbl&id=1915746670&matchSidRoomIds=2746928%2C2746929%2C2746931%2C2746930%2C2746902%2C2746905%2C2746879%2C2746887&query=%ED%94%84%EB%A6%AC%EB%AF%B8%EC%97%84%20%EC%95%A0%EA%B2%AC%ED%92%80%EB%B9%8C%EB%9D%BC", phoneName: "01092117741", pensionDetail: "리모델링을 하여 더 깨끗한 숙박이 가능하며, 불편함 없는 힐링여행이 되실겁니다. 애견인들은 애견동반 가능객실이 따로 배치되어있어 사랑하는 애견과 바다산책과 숙박이 가능합니다."),
    Pension(name: "펫티움애견펜션", location: "경기 가평군 북면 가화로 1364-66", imageName: "pension12", siteName: "https://store.naver.com/accommodations/detail?entry=pbl&id=1547886882&matchSidRoomIds=3154672%2C3152470%2C3154261%2C3154652%2C3154656%2C3154660%2C3154663%2C3154667&query=%ED%8E%AB%ED%8B%B0%EC%9B%80%EC%95%A0%EA%B2%AC%ED%8E%9C%EC%85%98", phoneName: "01076278245", pensionDetail: "도담도담펜션은  애견울타리와 수영장을 갖춘 애견동반 펜션입니다. 아침에는 조식도 제공하는 애견펜션~~!!! 객실에 애견용품(배변판, 배변패드, 애견식기, 애견수건) 비치!"),
    Pension(name: "커플애견동반 구름펜션", location: "충남 태안군 안면읍 꽃지1길 142", imageName: "pension13", siteName: "https://store.naver.com/accommodations/detail?entry=pbl&id=13009319&matchSidRoomIds=2474202%2C2474733%2C2474920%2C2474928%2C2474940%2C2475347%2C2475349%2C2475351%2C2475541%2C2474016&query=%EC%BB%A4%ED%94%8C%EC%95%A0%EA%B2%AC%EB%8F%99%EB%B0%98%20%EA%B5%AC%EB%A6%84%ED%8E%9C%EC%85%98", phoneName: "01092458848", pensionDetail: "꽃과 나무들로 잘 가꾸어진 넓은 정원과 송림과 어우러진 푸른 바다에서 힐링의 시간을 가져보세요. 잊지못할 소중한 여행이 될것 입니다."),
    Pension(name: "엘리스산장애견펜션", location: "경기 가평군 설악면 어비산길 204", imageName: "pension14", siteName: "https://store.naver.com/accommodations/detail?entry=pbl&id=11888242&matchSidRoomIds=2677302%2C2677341%2C2677355&query=%EC%97%98%EB%A6%AC%EC%8A%A4%EC%82%B0%EC%9E%A5%EC%95%A0%EA%B2%AC%ED%8E%9C%EC%85%98", phoneName: "01093891691", pensionDetail: "가까운곳에는 삼봉해수욕장, 애견이 항상 입장가능한 꽃지해수욕장이 위치해 있구요 안면도에는 애견이 입장가능한 튤립축제장, 수선화축제장, 빛축제장 및 팜카밀레 허브농원등이 있습니다. 떠나기 좋은계절입니다. 이곳 안면도슈가몽으로 오세요~~~~"),
    
  ])
]
