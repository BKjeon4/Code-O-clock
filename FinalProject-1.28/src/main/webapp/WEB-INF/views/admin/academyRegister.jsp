<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>CODE O' CLOCK - 관리자페이지</title>

    <!-- Custom fonts for this template -->
    <link href="../admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../admin/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="../admin/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="/admin/css/sb-admin-2.css" rel="stylesheet">
        <style> 
        a:hover {
        text-decoration: none;
    }
    .admina{
    
        font-weight: normal;
      white-space: nowrap;
      text-align: left;
             }
    .adminb{
    
    font-weight: normal;
    white-space: nowrap;
    text-align: right;
         }
    </style>

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-dark sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index">
                <div class="sidebar-brand-icon rotate-n-15">
                    
                </div>
                <div class="sidebar-brand-text mx-3">CODE O' CLOCK Admin </div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- 메인페이지로 이동Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="index">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>User Page</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Interface
            </div>

<!-- Nav Item - Utilities Collapse Menu -->
<li class="nav-item"><a class="nav-link" href="/admin/academyList">
    <i class="fas  fa-graduation-cap"></i> <span>학원 관리</span>
</a>
   </li>
    <li class="nav-item"><a class="nav-link" href="/admin/teacherlist">
       <i class="fas fa fa-users"></i> <span>강사 관리</span>
    </a>
       </li>
        <li class="nav-item"><a class="nav-link" href="/admin/lecturelist"> 
            <i class="fa fa-play-circle"></i> <span>강의 관리</span>
        </a>
        </li>

         <li class="nav-item"><a class="nav-link" href="/admin/memberlist">
                <i class="fas fa-user"></i> <span>회원관리</span>
        </a></li>    

        <!-- Nav Item - Pages Collapse Menu -->
<li class="nav-item"><a class="nav-link collapsed" href=""
    data-toggle="collapse" data-target="#collapseFive"
    aria-expanded="true" aria-controls="collapseFive"> <i
        class="fas fa-file"></i> <span>게시판관리</span>
</a>
    <div id="collapseFive" class="collapse" aria-labelledby="headingTwo"
        data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="/admin/reviewList">리뷰 관리</a> 
            <a class="collapse-item" href="/admin/honestList">솔직답변 관리</a> 
            <a class="collapse-item" href="/admin/announcement_m">공지사항 관리</a>
        </div>
    </div></li>    
           
<!-- Nav Item - Charts -->
<li class="nav-item"><a class="nav-link" href="/admin/checkout">
        <i class="fas fa-credit-card"></i> <span>결제내역관리</span>
</a></li>


<!-- Divider -->
<hr class="sidebar-divider d-none d-md-block">

<!-- Sidebar Toggler (Sidebar) -->
<div class="text-center d-none d-md-inline">
    <button class="rounded-circle border-0" id="sidebarToggle"></button>
</div>


</ul>
<!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item -->
						<li>
							<a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                </a>
						</li>

                        
                    </ul>

                </nav>
                <!-- End of Topbar -->




                
                <!-- 수정-->
                <!-- Begin Page Content -->
                <div class="container-fluid">
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-dark">국비/부트 등록</h6>
                        </div>

                        <div class="card-body">
                            <div class="table-responsive">
                                <!-- form-->
                            	<form action="/admin/educationUpdate" id = "upEduForm" method="post">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">



                                    <tbody id="itemRegisterTbl">
                                        <tr> 
                                            <td class="tblTitle" colspan="3" style="font-size: 16pt; font-weight: bold;">국비/부트 정보</td> 
                                        </tr>
                                        <tr>
                                            <input type="hidden" name="edId" value="${academyRegister.edId}">
                                      
                                          <!-- readonly 넣으면 값을 못바꿈 회원가입했을때 이름가져오게 한다음 고정시킬까?-->
                                            <th scope="row" style="width:20%;">학원 이름</th>
                                            <td class="iValue" colspan="2">${academyRegister.edName}</td>
                                            <input type="hidden" name="edName" value="${teacherRegister.edName}">
                                        </tr>
                                        <tr>
                                            <th scope="row">교육과정제목</th>
                                            <td class="iValue" colspan="2"> ${academyRegister.edTitle}</td>
                                            <input type="hidden" name="edTitle" value="${academyRegister.edTitle}">
                                        </tr>
                                        <tr>
                                            <th scope="row">등록날짜</th>
                                            <td class="iValue" colspan="2"> ${academyRegister.edDays}</td>
                                            <input type="hidden" name="edDays" value="${academyRegister.edDays}">
                                        </tr>
                                        <tr>
                                            <th scope="row">카테고리 키워드</th>
                                            <td class="iValue" colspan="2">${academyRegister.edKeyword}</td>
                                            <input type="hidden" name="edKeyword" value="${academyRegister.edKeyword}">
                                        </tr>
                                        
                                         <tr>
                                            <th scope="row" style="vertical-align: middle;">국비/부트 사진등록</th>
                                            
                                            <c:if test = "${academyRegister.edId != null}">
                                            <td class="iValue" id="addImg"  colspan="2">
                                                <img src="/assets/img/course/${academyRegister.edPic}" alt="" width='300' height='300' ></td>
                                                <input type="hidden" name="edPic" value="${academyRegister.edPic}">
                                            </c:if>  

                                        </tr>
                                        
                                        <!--승인 여부를 위한 js 와연동-->
                                        <!--히든존-->
                                        <input type="hidden" id = "edTf" name="edTf" value="">
                                        


                                        <tr>
                                            <c:if test = "${academyRegister.edId != null}">
                                            <td colspan="3" style="text-align: center;" >
                                                <input type="submit" id= "t-btn" value="승인" 
                                                style="background-color : #4e73df; width:70px; height:30px; font-size: 10pt; color: white; border-style: none; border-radius: 3px;" onclick="eduBtn()">
                                                <input type="submit" id= "f-btn" value="거절" 
                                                style="background-color : #4e73df; width:70px; height:30px; font-size: 10pt; color: white; border-style: none; border-radius: 3px;" onclick="eduBtn2()" > 
                                            </td>
                                        </c:if>  
                                        </tr>
                                    </tbody>


                                    
                                </table>
                                </form>
                            </div>
                        </div>
                    </div>
                    

                </div>


                <!-- /.container-fluid -->







                

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; PetDo 2021</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">로그아웃</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body" >로그아웃 하시겠습니까?</div>
				<div class="modal-footer" style="height:75px;">
					<button class="btn btn-secondary" type="button" style="border-radius: 10px;"
						data-dismiss="modal">취소</button>
					<a class="btn btn-dark" href="../logOut.do" style="border-radius: 10px;">로그아웃</a>
				</div>
			</div>
		</div>
	</div>

   <!-- Bootstrap core JavaScript-->
   <script src="../admin/vendor/jquery/jquery.min.js"></script>
   <script src="../admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

   <!-- Core plugin JavaScript-->
   <script src="../admin/vendor/jquery-easing/jquery.easing.min.js"></script>

   <!-- Custom scripts for all pages-->
   <script src="../admin/js/sb-admin-2.min.js"></script>

   <!-- Page level plugins -->
   <script src="../admin/vendor/chart.js/Chart.min.js"></script>

   <!-- Page level custom scripts -->
   <script src="../admin/js/demo/chart-area-demo.js"></script>
   <script src="../admin/js/demo/chart-pie-demo.js"></script>
   <script src="/assets/js/alljs.js"></script>

</body>
