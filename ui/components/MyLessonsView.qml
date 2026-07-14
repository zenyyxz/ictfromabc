import QtQuick
import QtQuick.Layouts
import "../theme"

Rectangle {
    id: myLessonsView
    anchors.fill: parent
    anchors.margins: Theme.marginMain
    radius: Theme.radiusXXL
    color: Theme.grey
    GridLayout {
        anchors.fill: parent
    
        LessonCard {
            lessonImgSrc: "../../assets/python-svgrepo-com.svg"
            lessonDes: "Python is a high-level, interpreted programming language known for its clear syntax and versatility. Created by Guido van Rossum and released in 1991, it has become one of the world's most popular languages due to its beginner-friendly nature and vast ecosystem."
        }
        LessonCard {
            lessonImgSrc: "../../assets/python-svgrepo-com.svg"
            lessonDes: "Python is a high-level, interpreted programming language known for its clear syntax and versatility. Created by Guido van Rossum and released in 1991, it has become one of the world's most popular languages due to its beginner-friendly nature and vast ecosystem."
        }
        LessonCard {
            lessonImgSrc: "../../assets/python-svgrepo-com.svg"
            lessonDes: "Python is a high-level, interpreted programming language known for its clear syntax and versatility. Created by Guido van Rossum and released in 1991, it has become one of the world's most popular languages due to its beginner-friendly nature and vast ecosystem."
        }
        LessonCard {
            lessonImgSrc: "../../assets/python-svgrepo-com.svg"
            lessonDes: "Python is a high-level, interpreted programming language known for its clear syntax and versatility. Created by Guido van Rossum and released in 1991, it has become one of the world's most popular languages due to its beginner-friendly nature and vast ecosystem."
        }
        LessonCard {
            lessonImgSrc: "../../assets/python-svgrepo-com.svg"
            lessonDes: "Python is a high-level, interpreted programming language known for its clear syntax and versatility. Created by Guido van Rossum and released in 1991, it has become one of the world's most popular languages due to its beginner-friendly nature and vast ecosystem."
        }
    }
}