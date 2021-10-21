<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>result pages</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/static/css/styles.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="/">Untact Photo Booth</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="/">다시 촬영하기</a></li>
                        <li class="nav-item"><a class="nav-link" href="/#about">주의사항</a></li>
                        <li class="nav-item"><a class="nav-link" href="/#contact">문의</a></li>
                    </ul>
                </div>
                <button class="btn btn-outline-dark flex-shrink-0" id="btn-history" type="button">
                    기록하기
                </button>
            </div>
        </nav>
        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <!-- 분석한 사진 미리보기 -->
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" id="result_image" alt="/static/assets/img/portfolio/no_image.png" /></div>
                    <div class="col-md-6">
                        <!-- 결과 텍스트 -->
                        <div class="small mb-1">분석 결과</div>
                        <h1 class="display-5 fw-bolder" id="head-text"></h1>
                        <p class="lead" id="detail-text-1"></p>
                        <p class="lead" id="detail-text-2"></p>
                        <p class="lead" id="detail-text-3"></p>
                        <div class="d-flex">
                            <button class="btn btn-outline-dark flex-shrink-0" id="btn-detail" type="button">
                                눌러서 자세히 보기
                            </button>
                        </div>
                        <script>
                            var urlParams = new URLSearchParams(window.location.search);
                            var head_text = document.getElementById("head-text");

                            var emotion = JSON.parse(JSON.stringify(${emotion}));
                            var age = JSON.parse(JSON.stringify(${age}));
                            var pose = JSON.parse(JSON.stringify(${pose}));
                            var gender = JSON.parse(JSON.stringify(${gender}));
                            var imgUrl = JSON.parse(JSON.stringify(${image}));

                            console.log(imgUrl);

                            // image source from URL
                            var img = document.getElementById("result_image");
                            img.setAttribute("src", imgUrl.image); // s3로 수정 필요

                            if(emotion.value == "neutral"){
                                head_text.append("무표정에 가까워요. 약간의 미소와 함께 다시 찍어보는게 어떨까요?");
                            }else if(emotion.value == "angry"){
                                head_text.append("화가 나신 모양이에요. 웃는 얼굴로 다시 찍어볼까요?")
                            }else if(emotion.value == "disgust"){
                                head_text.append("무언가 역겨운 것을 보셨나요? 증명사진으로 쓰기엔 어려울 것 같아요.")
                            }else if(emotion.value == "fear"){
                                head_text.append("두려워하는 표정이에요. 다시 한번 웃는 얼굴로 찍어볼까요?");
                            }else if(emotion.value == "laugh"){
                                head_text.append("비웃는 듯한 표정이에요. 다시 찍어볼까요?");
                            }else if(emotion.value == "sad"){
                                head_text.append("울적한 표정이에요.. 슬픈 일이 있으셨나요?");
                            }else if(emotion.value == "surprise"){
                                head_text.append("무언가에 놀라셨군요?! 아주 놀란 표정이에요.");
                            }else if(emotion.value == "smile"){
                                head_text.append("환하게 웃고 계시는군요!");
                            }else{
                                head_text.append("누군가와 대화하는 듯한 모습이에요. 아무래도 증명사진으로는 어렵겠죠?");
                            }

                            var PhotoMood1 = "나이는 약 " + age.value + "살로 보이고";
                            var PhotoMood2;
                            var PhotoMood3;

                            if(pose.value == "part_face"){
                                PhotoMood2 = "얼굴이 일부분만 보여요.";
                            }else if(pose.value == "false_face"){
                                PhotoMood2 = "얼굴이 잘 보이지 않아요.";
                            }else if(pose.value == "sunglasses"){
                                PhotoMood2 = "선글라스를 쓰고 있어요.";
                            }else if(pose.value == "frontal_face"){
                                PhotoMood2 = "제대로 정면을 보고있어요.";
                            }else if(pose.value == "left_face"){
                                PhotoMood2 = "약간 우측을 보고있어요.";
                            }else if(pose.value == "right_face"){
                                PhotoMood2 = "약간 좌측을 보고있어요.";
                            }else if(pose.value == "rotate_face"){
                                PhotoMood2 = "사진이 돌아가있어요.";
                            }

                            if(gender.value == "female"){
                                PhotoMood3 = "성별은 여성이시네요.";
                            } else {
                                PhotoMood3 = "성별은 남성이시네요.";
                            }

                            var cnt = 0;
                            var b = document.getElementById("btn-detail");
                            b.addEventListener("click", function(){
                                if (cnt > 0){
                                    console.log("clicked again");
                                }else{
                                    var p1 = document.getElementById("detail-text-1");
                                    var p2 = document.getElementById("detail-text-2");
                                    var p3 = document.getElementById("detail-text-3");
                                    p1.append(PhotoMood1);
                                    p2.append(PhotoMood2);
                                    p3.append(PhotoMood3);
                                    cnt ++;
                                }
                            });


                            /*
                            const likelihood = {"undefined": "no", "VERY_UNLIKELY": "0%", "UNLIKELY": "10%", "POSSIBLE": "30%", "LIKELY": "70%", "VERY_LIKELY": "100%"};

                            var joy = urlParams.get("j");
                            var sorrow = urlParams.get("s");
                            var anger = urlParams.get("a");
                            var surprise = urlParams.get("p");
                            var file_name = urlParams.get("n");
                            var PhotoMood1 = "웃는 표정일 확률은 " + likelihood[joy]
                            var PhotoMood2 = "슬픈 표정일 확률은 " + likelihood[sorrow]
                            var PhotoMood3 = "화난 표정일 확률은 " + likelihood[anger]
                            var PhotoMood4 = "놀란 표정일 확률은 " + likelihood[surprise];
                            // image source from URL
                            var img = document.getElementById("result_image");
                            img.setAttribute("src", "https://storage.googleapis.com/untactphotobooth/" + file_name); // s3로 수정 필요
                            // text msg setting
                            var head_text = document.getElementById("head-text");
                            console.log("result : " + likelihood[joy]);
                            if(likelihood[joy] == "70%"){
                                head_text.append("좋은 인상을 남길 수 있을 것 같아요!");
                            }else if(likelihood[joy] == "100%"){
                                head_text.append("환하게 웃고 계시는군요!")
                            }else if(likelihood[sorrow] == "100%"){
                                head_text.append("울적한 표정이에요.. 슬픈 일이 있으셨나요?")
                            }else if(likelihood[anger] == "100%"){
                                head_text.append("화가 나신 모양이에요. 웃는 얼굴로 다시 찍어볼까요?");
                            }else if(likelihood[surprise] == "100%"){
                                head_text.append("무언가에 놀라셨군요?! 아주 놀란 표정이에요.");
                            }else if(likelihood[sorrow] == "70%" || likelihood[anger] == "70%" || likelihood[surprise] == "70%"){
                                head_text.append("음, 이력서의 첫 인상으로는 어려울 것 같아요. 다시 찍어볼까요?");
                            }else if(likelihood[joy] == "30%"){
                                head_text.append("밝은 느낌을 주기엔 어렵겠어요. 다시 찍어보시는게 어떨까요?");
                            }else if(likelihood[sorrow] == "30%" || likelihood[anger] == "30%" || likelihood[surprise] == "30%"){
                                head_text.append("복잡한 감정이 느껴져요. 애매한 사진을 이력서에 올릴 순 없죠! 다시 찍어볼까요?");
                            }else{
                                head_text.append("무표정에 가까워요. 약간의 미소와 함께 다시 찍어보는게 어떨까요?");
                            }


                            var cnt = 0;
                            var b = document.getElementById("btn-detail");
                            b.addEventListener("click", function(){
                                if (cnt > 0){
                                    console.log("clicked again");
                                }else{
                                    var p1 = document.getElementById("detail-text-1");
                                    var p2 = document.getElementById("detail-text-2");
                                    var p3 = document.getElementById("detail-text-3");
                                    var p4 = document.getElementById("detail-text-4");
                                    p1.append(PhotoMood1);
                                    p2.append(PhotoMood2);
                                    p3.append(PhotoMood3);
                                    p4.append(PhotoMood4);
                                    cnt ++;
                                }
                            });
                            */
                        </script>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">재촬영 또는 홈으로 돌아가시려면 상단의 메뉴를 클릭해주세요!</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <!--<script src="js/result_scripts.js"></script>-->
    </body>
</html>
