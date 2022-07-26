<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NAWA , 인기있는 공간이 궁금하다면</title>
    <link rel="stylesheet" href="../../../resources/static/css/style.css">
    <script src="https://kit.fontawesome.com/8dd996c4db.js" crossorigin="anonymous">
    </script>
</head>
<body> <!-- 홈페이지 기본 레이아웃 max width 80 % -->
<header>
    <div class="fullLayOut">
        <nav class="navbar">
            <div class="navbar__logo">
                <a class="link" href="http://127.0.0.1:5500/AirBnB.html#">
                    <img src="resources/static/img/image2/NAWA__logo.png" width="110" alt="에어비앤비 로고">
                </a>
            </div>
            <ul class="navbar__menu">
                <li><a class="link" href="#실시간">실시간</a></li>
                <li><a class="link" href="#일간">일간</a></li>
                <li><a class="link" href="#주간">주간</a></li>
                <li><a class="link" href="#월간">월간</a></li>
            </ul>
            <ul class="navbar__usertab">
                <li><a class="link" href="#"><i class="fas fa-globe"></i></a></li>
                <li><a class="link" href="#"><i class="fas fa-address-card"></i></a></li>
            </ul>
        </nav>
        <div class="background-img">
            <div class="center__button">
                <div class="centerText">
                    <h2>데이터 기준의 트랜드한 장소를 소개해 드려요!</h2>
                </div>
            </div>
        </div>
    </div>
</header>
<div class="fullLayOut2">
    <br> <!-- 줄바꿈 -->
    <h2>
        Restaurant - 식당 -
    </h2>
    <%
        String img0,img1,img2,img3,img4,img5,img6,img7,img8,img9,img10,img11,img12,img13,img14,
                img15,img16,img17;

        Statement st;
        PreparedStatement pstmt;
        ResultSet rs;
        Connection conn;

        try { // DB 연결 구문
            // 드라이버 로딩.
            Class.forName("com.mysql.cj.jdbc.Driver"); // 객체화 하는 과정 , 메모리상에 잡히게 된다.
            // 연결하기.
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nawa", "root", "QhrtnswoTkddl1!6");
            st = conn.createStatement();
            String sql = "SELECT * FROM CRAWLING";
            rs = st.executeQuery(sql);

            // while (rs.next())
            // {
            rs.next();
            img0 = rs.getString(5); // 인덱스값 = DB 컬럼의 몇번째 값을 출력할건지
            rs.next();              // 커서를 옮겨줌 , 다음 데이터로 넘어가게
            img1 = rs.getString(5);
            rs.next();
            img2 = rs.getString(5);
            rs.next();
            img3 = rs.getString(5);
            rs.next();
            img4 = rs.getString(5);
            rs.next();
            img5 = rs.getString(5);
            rs.next();
            img6 = rs.getString(5);
            rs.next();
            img7 = rs.getString(5);
            rs.next();
            img8 = rs.getString(5);
            rs.next();
            img9 = rs.getString(5);
            rs.next();
            img10 = rs.getString(5);
            img11 = rs.getString(5);
            img12 = rs.getString(5);
            img13 = rs.getString(5);
            img14 = rs.getString(5);
            img15 = rs.getString(5);
            img16 = rs.getString(5);
            img17 = rs.getString(5);
    %>

    <div class="first__area">
        <div class="contant__ranking__box">   <%-- DB에서 담아오는 이미지를 넣는 container --%>
            <img class="card__img1" src=${img0}>
            <img class="card__img1" src=${img0}>   <%--model Test line--%>


            <div class="ranking">
                <h2>1</h2>
            </div>
            <div class="card__text">
                <h4>
                    ${textcode}<br>
                </h4>
                <p>텍스트 영역</p>
            </div>
        </div>

        <div class="contant__ranking__box">
            <img class="card__img2" src = "<%=img1%>">
            <div class="ranking">
                <h2>2</h2>
            </div>
            <div class="card__text">
                <h4>
                    텍스트 영역<br>
                </h4>
                <p>텍스트 영역</p>
            </div>
        </div>

        <div class="contant__ranking__box">
            <img class="card__img3" src = "<%=img2%>">
            <div class="ranking">
                <h2>3</h2>
            </div>
            <div class="card__text">
                <h4>
                    텍스트 영역<br>
                </h4>
                <p>텍스트 영역</p>
            </div>
        </div>

        <div class="contant__ranking__box">

            <img class="card__img4" src = "<%=img3%>">
            <div class="ranking">
                <h2>4</h2>
            </div>
            <div class="card__text">
                <h4>
                    텍스트 영역<br>
                </h4>
                <p>텍스트 영역</p>
            </div>
        </div>

        <div class="contant__ranking__box">

            <img class="card__img5" src = "<%=img4%>">
            <div class="ranking">
                <h2>5</h2>
            </div>
            <div class="card__text">
                <h4>
                    텍스트 영역<br>
                </h4>
                <p>텍스트 영역</p>
            </div>
        </div>
    </div>

    <br> <!-- 줄바꿈 -->

    <h2>
        park - 공원 -
    </h2>
    <div class="first__area">
        <div class="contant__ranking__box">

            <img class="card__img1" src = "<%=img6%>">
            <div class="ranking">
                <h2>1</h2>
            </div>
            <div class="card__text">
                <h4>
                    텍스트 영역<br>
                </h4>
                <p>텍스트 영역</p>
            </div>
        </div>

        <div class="contant__ranking__box">
            <img class="card__img2" src = "<%=img7%>">
            <div class="ranking">
                <h2>2</h2>
            </div>
            <div class="card__text">
                <h4>
                    텍스트 영역<br>
                </h4>
                <p>텍스트 영역</p>
            </div>
        </div>

        <div class="contant__ranking__box">
            <img class="card__img3" src = "<%=img8%>">
            <div class="ranking">
                <h2>3</h2>
            </div>
            <div class="card__text">
                <h4>
                    텍스트 영역<br>
                </h4>
                <p>텍스트 영역</p>
            </div>
        </div>

        <div class="contant__ranking__box">
            <img class="card__img4" src = "<%=img9%>">
            <div class="ranking">
                <h2>4</h2>
            </div>
            <div class="card__text">
                <h4>
                    텍스트 영역<br>
                </h4>
                <p>텍스트 영역</p>
            </div>
        </div>

        <div class="contant__ranking__box">
            <img class="card__img5" src = "<%=img10%>">
            <div class="ranking">
                <h2>5</h2>
            </div>
            <div class="card__text">
                <h4>
                    텍스트 영역<br>
                </h4>
                <p>텍스트 영역</p>
            </div>
        </div>

    </div>

    <br> <!-- 줄바꿈 -->

    <h2>
        cafe - 카페 -
    </h2>
    <div class="first__area">
        <div class="contant__ranking__box">
            <img class="card__img1" src = "<%=img11%>">
            <div class="ranking">
                <h2>1</h2>
            </div>
            <div class="card__text">
                <h4>
                    텍스트 영역<br>
                </h4>
                <p>텍스트 영역</p>
            </div>
        </div>

        <div class="contant__ranking__box">
            <img class="card__img2" src = "<%=img12%>">
            <div class="ranking">
                <h2>2</h2>
            </div>
            <div class="card__text">
                <h4>
                    텍스트 영역<br>
                </h4>
                <p>텍스트 영역</p>
            </div>
        </div>

        <div class="contant__ranking__box">
            <img class="card__img3" src = "<%=img13%>">
            <div class="ranking">
                <h2>3</h2>
            </div>
            <div class="card__text">
                <h4>
                    텍스트 영역<br>
                </h4>
                <p>텍스트 영역</p>
            </div>
        </div>

        <div class="contant__ranking__box">
            <img class="card__img4" src = "<%=img14%>">
            <div class="ranking">
                <h2>4</h2>
            </div>
            <div class="card__text">
                <h4>
                    텍스트 영역<br>
                </h4>
                <p>텍스트 영역</p>
            </div>
        </div>

        <div class="contant__ranking__box">
            <img class="card__img5" src = "<%=img15%>">
            <div class="ranking">
                <h2>5</h2>
            </div>
            <div class="card__text">
                <h4>
                    텍스트 영역<br>
                </h4>
                <p>텍스트 영역</p>
            </div>
        </div>
    </div>
</div>

<br>
<div class="fullLayout7">
    <p id="실시간"><h2>실시간</h2>
</div>
<br>

<section class="ranking__first">

    <div class="fullLayout3">

        <div class="img__card__contant1">

        </div>

        <div class="text__Box">
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
        </div>

    </div>


</section>


<section class="ranking__second">

    <div class="fullLayout4">

        <div class="text__Box">
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>

        </div>

        <div class="img__card__contant2">

        </div>

    </div>

</section>

<section class="ranking__third">

    <div class="fullLayout5">

        <div class="img__card__contant3">

        </div>

        <div class="text__Box">
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
        </div>

    </div>

</section>

<br>
<div class="fullLayout7">
    <p id="일간"><h2>일간</h2>
</div>
<br>

<section class="ranking__first">

    <div class="fullLayout3">

        <div class="img__card__contant1">

        </div>

        <div class="text__Box">
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
        </div>

    </div>

</section>

<section class="ranking__second">

    <div class="fullLayout4">

        <div class="text__Box">
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>

        </div>

        <div class="img__card__contant2">

        </div>

    </div>


</section>


<section class="ranking__third">

    <div class="fullLayout5">

        <div class="img__card__contant3">

        </div>

        <div class="text__Box">
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
        </div>

    </div>


</section>

<br>
<div class="fullLayout7">
    <p id="주간"><h2>주간</h2>
</div>
<br>

<section class="ranking__first">

    <div class="fullLayout3">

        <div class="img__card__contant1">

        </div>

        <div class="text__Box">
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
        </div>

    </div>


</section>


<section class="ranking__second">

    <div class="fullLayout4">

        <div class="text__Box">
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>

        </div>

        <div class="img__card__contant2">


        </div>

    </div>


</section>


<section class="ranking__third">

    <div class="fullLayout5">

        <div class="img__card__contant3">

        </div>

        <div class="text__Box">
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
        </div>

    </div>


</section>

<br>
<div class="fullLayout7">
    <p id="월간"></p><h2>월간</h2>
</div>
<br>

<section class="ranking__first">

    <div class="fullLayout3">

        <div class="img__card__contant1">

        </div>

        <div class="text__Box">
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
        </div>

    </div>


</section>


<section class="ranking__second">

    <div class="fullLayout4">

        <div class="text__Box">
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>

        </div>

        <div class="img__card__contant2">


        </div>

    </div>


</section>


<section class="ranking__third">

    <div class="fullLayout5">

        <div class="img__card__contant3">

        </div>

        <div class="text__Box">
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
            asgfmqwdlksamcqwicasgfmqwdlksamcqwicasgfmqwdlksamcqwic<br>
        </div>

    </div>

</section>

<div>
    JSP . List
    <%
            /* out.println
             (
                     rs.getString(1) + "\t" +
                     rs.getString(2) + "\t" +
                     rs.getString(3) + "\t" +
                     rs.getString(4) + "\t" +
                     rs.getString(5) + "\t"
             ); */
            //  }
        } catch (ClassNotFoundException e) {
            out.println(" 에러가 났습니다. (드라이버 로딩 실패) " + e.getMessage());
            e.printStackTrace(); // 에러가 어디서 났는지 알려주고 전체적인 결과를 노출해준다.
        } catch (SQLException e) {
            out.println("에러: " + e);
            e.printStackTrace();
        } catch (Exception e)
        {
            out.println("데이터베이스 검색 오류 : " + e.getMessage());
        }
    %>
</div>

</body>

<footer>
    Footer
</footer>
</html>