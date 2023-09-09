import 'package:gyansansar/models/attachment.dart';
import 'package:gyansansar/models/comment.dart';
import 'package:gyansansar/models/country.dart';
import 'package:gyansansar/models/faculty.dart';
import 'package:gyansansar/models/info.dart';
import 'package:gyansansar/models/meta.dart';
import 'package:gyansansar/models/subject.dart';
import 'package:gyansansar/models/user.dart';

import '../models/random_post.dart';

List<RandomPost> posts = [
  RandomPost(
      id: 1,
      facultyId: "2",
      subjectId: "3",
      userId: "1",
      type: "21312",
      description: "weqw",
      notificationStatus: "3",
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      likedStatus: "O",
      favouriteStatus: "sadkajsld",
      reactorCounter: "1",
      commentCounter: "2",
      meta: [Meta(id: 1, postId: "2", attachment: "asdsadsa")],
      subject: Subject(
          id: 2,
          subjectName: "sdanldsa",
          fullMark: "100",
          passMark: "40",
          practicalStatus: "OKay",
          theoreticalFullMark: "sajdlkajdsklas",
          theoreticalPassMark: "ksjdkajsld",
          practicalFullMark: "kaskdljaslkda",
          practicalPassMark: "kajsdljasldk"),
      faculty: Faculty(
          id: 2,
          facultyName: "jskajdslkas",
          countryId: "sjkdjalkdjas",
          country: Country(
              id: 1,
              countryName: "sadjhasjdk",
              countryCode: "ajsdkjaskld",
              phoneCode: "asdjahsjdk")),
      user: User(
          id: 1,
          givenName: "ajskldaj",
          familyName: "asdlkasdjlkas",
          email: "alajsdlkjasldk",
          phone: "dskf;lsdkf;l",
          type: "das,.mda",
          info: Info(
              userId: "1",
              profile: "asdasda",
              coverPhoto: "asdasdad",
              dob: DateTime.now(),
              gender: "sadasd",
              countryId: "asdasdad",
              postalCode: "asdasdasd",
              provinceStatePrefecture: "sadadsa",
              townWardCity: "sdadassda",
              roomBuildingStreetAddress: "sadasda")),
      comment: [
        Comment(
            id: 1,
            userId: "asda",
            description: "sadassda",
            postId: "sdasdasd",
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
            likedStatus: "daasds",
            reactorCounter: "sadasda",
            replyCounter: "sadasd",
            user: User(
                id: 1,
                givenName: "sdasdad",
                familyName: "sdadasd",
                email: "asdasd",
                phone: "sadasda",
                type: "sadasdas",
                info: Info(
                    userId: "2",
                    profile: "okay",
                    coverPhoto: "asadsada",
                    dob: DateTime.now(),
                    gender: "jdlkajsdklas",
                    countryId: "asdasda",
                    postalCode: "asdasda",
                    provinceStatePrefecture: "sadasd",
                    townWardCity: "dsadasd",
                    roomBuildingStreetAddress: "sadasd")),
            attachment: [
              Attachment(id: 1, commentId: "2", attachment: "sdadsadsdsad")
            ])
      ])
];
