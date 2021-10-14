<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>비대면 증명사진</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- 스크립트 -->
        <script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript"> <%@ include file="/static/js/scripts.js"%></script>
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
        <!-- 스타일 -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="/static/css/styles.css" rel="stylesheet" type="text/css" />
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand" href="#page-top">비대면 증명사진 촬영과 분석</a>
                <button class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">촬영하기</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#about">주의사항</a></li>
                        <li class="nav-item mx-0 mx-lg-1"><a class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">문의</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead bg-primary text-white text-center">
            <div class="container d-flex align-items-center flex-column">
                <!-- Masthead Avatar Image-->
                <img class="masthead-avatar mb-5" src="/static/assets/img/portfolio.png" alt="..." />
                <!-- Masthead Heading-->
                <h1 class="masthead-heading text-uppercase mb-0">Untact Photo Booth</h1>
                <!-- Icon Divider-->
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Masthead Subheading-->
                <p class="masthead-subheading font-weight-light mb-0">이시국에도 취업 준비는 계속되어야 한다.</p>
            </div>
        </header>
        <!-- Portfolio Section-->
        <section class="page-section portfolio" id="portfolio">
            <div class="container">
                <!-- Portfolio Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Take a Photo</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Portfolio Grid Items-->
                <div class="row justify-content-center">
                    <!-- Portfolio Item 1-->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal1">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="/static/assets/img/portfolio/cabin.png" alt="..."  />
                        </div>
                    </div>
                    <!-- Portfolio Item 2-->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal2">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><i class="fas fa-plus fa-3x"></i></div>
                            </div>
                            <img class="img-fluid" src="/static/assets/img/portfolio/cake.png" alt="..." />
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- About Section-->
        <section class="page-section bg-primary text-white mb-0" id="about">
            <div class="container">
                <!-- About Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-white">About</h2>
                <!-- Icon Divider-->
                <div class="divider-custom divider-light">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- About Section Content-->
                <div class="row">
                    <div class="col-lg-4 ms-auto"><p class="lead">사진을 촬영하기 전, 웹캠 권한을 승인해주셔야 합니다. 사진 촬영 목적으로만 쓰이며 저장하지 않습니다.</p></div>
                    <div class="col-lg-4 me-auto"><p class="lead">사진에 얼굴이 나와야합니다. 과도하게 가까운 사진 혹은 너무 먼 거리에서 찍은 사진은 인식되지 않을 수 있습니다.</p></div>
                </div>
                <!-- About Section Button-->
                <div class="text-center mt-4">
                    <a class="btn btn-xl btn-outline-light">
                        감사합니다
                    </a>
                </div>
            </div>
        </section>

        <!-- Footer-->
        <footer class="footer text-center" id="contact">
            <div class="container">
                <div class="row">
                    <!-- Footer Location-->
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <h4 class="text-uppercase mb-4">개발자 소개</h4>
                        <p class="lead mb-0">
                            SheepEatLion 블로그를 운영하는 학생 개발자입니다.
                            <br />
                            Around the web의 링크들을 클릭하고 구경오세요!
                        </p>
                    </div>
                    <!-- Footer Social Icons-->
                    <div class="col-lg-4 mb-5 mb-lg-0">
                        <h4 class="text-uppercase mb-4">Around the Web</h4>
                        <a class="btn btn-outline-light btn-social mx-1" href="#!"><i class="fab fa-fw fa-facebook-f"></i></a>
                        <a class="btn btn-outline-light btn-social mx-1" href="https://www.instagram.com/junsssssssss"><i class="fab fa-fw fa-instagram"></i></a>
                        <a class="btn btn-outline-light btn-social mx-1" href="https://github.com/SheepEatLion/UntactSelfPhoto"><i class="fab fa-fw fa-github"></i></a>
                        <a class="btn btn-outline-light btn-social mx-1" href="https://blog.naver.com/gowjr300"><i class="fas fa-star"></i></a>
                    </div>
                    <!-- Footer About Text-->
                    <div class="col-lg-4">
                        <h4 class="text-uppercase mb-4">문의사항 관련</h4>
                        <p class="lead mb-0">
                            문의는 블로그 쪽지 또는 SNS DM을 통해 부탁드립니다. 보내주신 문의 사항은 주기적으로 검토 후에 업데이트할 계획입니다:)
                        </p>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Copyright Section-->
        <div class="copyright py-4 text-center text-white">
            <div class="container"><small>Copyright &copy; Your Website 2021</small></div>
        </div>
        <!-- Portfolio Modals-->
        <!-- 사진 촬영 페이지 -->
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" aria-labelledby="portfolioModal1" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
                    <div class="modal-body text-center pb-5">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Take a Photo</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- 비디오 효과 선택란 추가 -->
                                    <form>
                                        <fieldset id="photo-filter">
                                            <legend>먼저 필터를 고르세요!</legend>

                                            <input type="radio" name="filter" id="normal" value="none" checked="checked">
                                            <label for="normal">Normal</label>
                                            <input type="radio" name="filter" id="grayscale" value="grayscale(100%)">
                                            <label for="grayscale">Grayscale</label>
                                            <input type="radio" name="filter" id="sepia" value="sepia(100%)">
                                            <label for="sepia">Sepia</label>
                                            <input type="radio" name="filter" id="invert" value="invert(100%)">
                                            <label for="invert">Invert</label>
                                            <input type="radio" name="filter" id="hue" value="hue-rotate(90deg)">
                                            <label for="hue">Hue</lable>
                                            <input type="radio" name="filter" id="blur" value="blur(10px)">
                                            <label for="blur">blur</label>
                                            <input type="radio" name="filter" id="contrast" value="contrast(200%)">
                                            <label for="contrast">Contrast</lable>

                                        </fieldset>
                                    </form>
                                    <!-- Portfolio Modal - Image-->
                                    <!-- 이미지 지우고 비디오를 추가 -->
                                    <!-- <img class="img-fluid rounded mb-5" src="/static/assets/img/portfolio/cabin.png" alt="..." />-->
                                    <video id = "video" autoplay="true"></video>
                                    <!-- 캡쳐한 비디오 띄울 캔버스 추가 -->
                                    <canvas id="canvas" style="display: none;"></canvas>
                                    <div id="photos"></div>
                                    <!-- 촬영 버튼 -->
                                    <button id="start-photo" class="webcam-btn" onclick="startWebcam()">
                                        촬영시작
                                    </button>
                                    <button id="take-photo" class="webcam-btn">
                                        사진찍기
                                    </button>
                                    <!-- Portfolio Modal - Text-->
                                    <p class="mb-1">준비가 되셨다면 [촬영시작] 버튼을 클릭해주세요!</p>
                                    <p class="mb-1">그리고 [사진찍기] 버튼을 클릭한 뒤에 사진이 마음에 든다면 우클릭을 통해 간직해주세요!</p>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 사진 분석 페이지 -->
        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" aria-labelledby="portfolioModal2" aria-hidden="true">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header border-0"><button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button></div>
                    <div class="modal-body text-center pb-5">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-8">
                                    <!-- Portfolio Modal - Title-->
                                    <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">photograph analysis</h2>
                                    <!-- Icon Divider-->
                                    <div class="divider-custom">
                                        <div class="divider-custom-line"></div>
                                        <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                                        <div class="divider-custom-line"></div>
                                    </div>
                                    <!-- Portfolio Modal - Image-->
									<div id="imagePreview">
                                    <img class="img-fluid rounded mb-5" src="/static/assets/img/portfolio/cake.png" alt="..."/>
									</div>

                                    <!-- Portfolio Modal - Text (07.23 업로드 태그 추가) 07.26 백엔드 동작 확인  -->
                                    <p class="mb-4">분석할 사진을 선택해서 시작해주세요!</p>
                                    <form method="post" action="http://localhost:8080/upload" enctype="multipart/form-data">
                                        <input multiple type="file" name="files">
                                        <button class="webcam-btn">분석하기</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
