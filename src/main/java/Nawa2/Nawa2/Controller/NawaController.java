package Nawa2.Nawa2.Controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.*;
@Controller
public class NawaController {

    @GetMapping("/index")
    public String nawaWelcomePage (Model model){

        model.addAttribute("textcode","테스트코드!");
        System.out.println(model);

        return "/index";
    }

    @RequestMapping(value = "/welcomepage2",method = RequestMethod.GET)
    public String nawaWelcomePagetwo (Model model) {

        model.addAttribute("textcode2","이것도테스트코드!");
        System.out.println (model);

        return "welcomepage2";
    }
//
//    @RequestMapping(value = "index",method = RequestMethod.GET)
//    public String connectDB(Model model) {
//
//        try { // DB 연결 구문
//            // 드라이버 로딩.
//            Class.forName("com.mysql.cj.jdbc.Driver"); // 객체화 하는 과정 , 메모리상에 잡히게 된다.
//            // 연결하기.
//            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nawa", "root", "QhrtnswoTkddl1!6");
//            st = conn.createStatement();
//            String sql = "SELECT * FROM CRAWLING";
//            rs = st.executeQuery(sql);
//            while (rs.next())
//            {
//                rs.next();
//                img0 = rs.getString(5); // 인덱스값 = DB 컬럼의 몇번째 값을 출력할건지
//                rs.next();              // 커서를 옮겨줌 , 다음 데이터로 넘어가게
//                img1 = rs.getString(5);
//                rs.next();
//                img2 = rs.getString(5);
//                rs.next();
//                img3 = rs.getString(5);
//                rs.next();
//                img4 = rs.getString(5);
//                rs.next();
//                img5 = rs.getString(5);
//                rs.next();
//                img6 = rs.getString(5);
//                rs.next();
//                img7 = rs.getString(5);
//                rs.next();
//                img8 = rs.getString(5);
//                rs.next();
//                img9 = rs.getString(5);
//                rs.next();
//                img10 = rs.getString(5);
//                rs.next();
//                img11 = rs.getString(5);
//                rs.next();
//                img12 = rs.getString(5);
//                rs.next();
//                img13 = rs.getString(5);
//                rs.next();
//                img14 = rs.getString(5);
//                rs.next();
//                img15 = rs.getString(5);
//                rs.next();
//                img16 = rs.getString(5);
//                rs.next();
//                img17 = rs.getString(5);
//                rs.next();
//            }
//
//            model.addAttribute("img0","img0");
//
//        }
//        catch (ClassNotFoundException e) {
//            System.out.println(" 에러가 났습니다. (드라이버 로딩 실패) " + e.getMessage());
//            e.printStackTrace(); // 에러가 어디서 났는지 알려주고 전체적인 결과를 노출해준다.
//        } catch (SQLException e) {
//            System.out.println("에러: " + e);
//            e.printStackTrace();
//        } catch (Exception e)
//        {
//            System.out.println("데이터베이스 검색 오류 : " + e.getMessage());
//        }
//
//        return "index";
//    }

//     @GetMapping("/index")
//     public String nawa () {
//         return "index.jsp";
//     }

     // @RequestMapping value=url , method=어떤 요청으로 받을지 (Get,Post,Put,Delete)
//    @RequestMapping(method = RequestMethod.GET)   // 모델 부분 ( DB에 접근해서 이미지를 view 에 전달 )
//    public String testmodel(Model model) { // ( name 값 , value 값 )
//
//        try { // DB 연결 구문
//            // 드라이버 로딩.
//            Class.forName("com.mysql.cj.jdbc.Driver"); // 객체화 하는 과정 , 메모리상에 잡히게 된다.
//            // 연결하기.
//            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nawa", "root", "QhrtnswoTkddl1!6");
//            st = conn.createStatement();
//            String sql = "SELECT * FROM CRAWLING";
//            rs = st.executeQuery(sql);
//            while (rs.next())
//            {
//                rs.next();
//                img0 = rs.getString(5); // 인덱스값 = DB 컬럼의 몇번째 값을 출력할건지
//                rs.next();              // 커서를 옮겨줌 , 다음 데이터로 넘어가게
//                img1 = rs.getString(5);
//                rs.next();
//                img2 = rs.getString(5);
//                rs.next();
//                img3 = rs.getString(5);
//                rs.next();
//                img4 = rs.getString(5);
//                rs.next();
//                img5 = rs.getString(5);
//                rs.next();
//                img6 = rs.getString(5);
//                rs.next();
//                img7 = rs.getString(5);
//                rs.next();
//                img8 = rs.getString(5);
//                rs.next();
//                img9 = rs.getString(5);
//                rs.next();
//                img10 = rs.getString(5);
//                rs.next();
//                img11 = rs.getString(5);
//                rs.next();
//                img12 = rs.getString(5);
//                rs.next();
//                img13 = rs.getString(5);
//                rs.next();
//                img14 = rs.getString(5);
//                rs.next();
//                img15 = rs.getString(5);
//                rs.next();
//                img16 = rs.getString(5);
//                rs.next();
//                img17 = rs.getString(5);
//                rs.next();
//            }
//
//            model.addAttribute("img0","img0") ;
//        }
//        catch (ClassNotFoundException e) {
//            System.out.println(" 에러가 났습니다. (드라이버 로딩 실패) " + e.getMessage());
//            e.printStackTrace(); // 에러가 어디서 났는지 알려주고 전체적인 결과를 노출해준다.
//        } catch (SQLException e) {
//            System.out.println("에러: " + e);
//            e.printStackTrace();
//        } catch (Exception e)
//        {
//            System.out.println("데이터베이스 검색 오류 : " + e.getMessage());
//        }
//        model.addAttribute("img0","img0") ;
//        return "index";
//    }
}

//    public String crawling_dataDAO() {
//
//        try { // DB 연결 구문
//            // 드라이버 로딩.
//            Class.forName("com.mysql.cj.jdbc.Driver"); // 객체화 하는 과정 , 메모리상에 잡히게 된다.
//            // 연결하기.
//            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nawa", "root", "QhrtnswoTkddl1!6");
//            st = conn.createStatement();
//            String sql = "SELECT * FROM CRAWLING";
//            rs = st.executeQuery(sql);
//        }
//        catch (SQLException e) {
//            System.out.println(e + "오류");
//        }
//        catch (ClassNotFoundException e) {
//            System.out.println(e + "오류");
//        }
//        return "index";
//    }
//}

//    @GetMapping
//    public String nawamodel () {
//
//        String img0,img1,img2,img3,img4,img5,img6,img7,img8,img9,img10,img11,img12,img13,img14,
//                img15,img16,img17;
//
//        Statement st;
//        PreparedStatement pstmt;
//        ResultSet rs;
//        Connection conn;

//        try { // DB 연결 구문
//            // 드라이버 로딩.
//            Class.forName("com.mysql.cj.jdbc.Driver"); // 객체화 하는 과정 , 메모리상에 잡히게 된다.
//            // 연결하기.
//            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nawa", "root", "QhrtnswoTkddl1!6");
//            st = conn.createStatement();
//            String sql = "SELECT * FROM CRAWLING";
//            rs = st.executeQuery(sql);
//            // while (rs.next())
            // {
//            rs.next();
//            img0 = rs.getString(5); // 인덱스값 = DB 컬럼의 몇번째 값을 출력할건지
//            rs.next();              // 커서를 옮겨줌 , 다음 데이터로 넘어가게
//            img1 = rs.getString(5);
//            rs.next();
//            img2 = rs.getString(5);
//            rs.next();
//            img3 = rs.getString(5);
//            rs.next();
//            img4 = rs.getString(5);
//            rs.next();
//            img5 = rs.getString(5);
//            rs.next();
//            img6 = rs.getString(5);
//            rs.next();
//            img7 = rs.getString(5);
//            rs.next();
//            img8 = rs.getString(5);
//            rs.next();
//            img9 = rs.getString(5);
//            rs.next();
//            img10 = rs.getString(5);
//            rs.next();
//            img11 = rs.getString(5);
//            rs.next();
//            img12 = rs.getString(5);
//            rs.next();
//            img13 = rs.getString(5);
//            rs.next();
//            img14 = rs.getString(5);
//            rs.next();
//            img15 = rs.getString(5);
//            rs.next();
//            img16 = rs.getString(5);
//            rs.next();
//            img17 = rs.getString(5);
//            rs.next();

//        } catch (ClassNotFoundException e) {
//            System.out.println(" 에러가 났습니다. (드라이버 로딩 실패) " + e.getMessage());
//            e.printStackTrace(); // 에러가 어디서 났는지 알려주고 전체적인 결과를 노출해준다.
//        } catch (SQLException e) {
//            System.out.println("에러: " + e);
//            e.printStackTrace();
//        } catch (Exception e)
//        {
//            System.out.println("데이터베이스 검색 오류 : " + e.getMessage());
//        }

//        return "index";
//
//    }
