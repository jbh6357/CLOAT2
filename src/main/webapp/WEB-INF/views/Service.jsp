<%@include file="/WEB-INF/views/includes/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="https://code.jquery.com/jquery-3.7.1.min.js"
					integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
					crossorigin="anonymous"></script>
					
<section class="main content">
	<div class="inner inner_500">
		<h2 class="page_name2">업로드</h2>
			<ul class="form_ul">
				<li class="profile"><small class="s_info c_main">* 선택</small> 
				<span dclass="form_label">프로필 이미지 등록</span>
					<div class="filebox preview-image">
						<label for="profile_img" class="label_hidden"></label>
						<div class="upload-display">
							<img src="resources/images/user.png" alt="">
						</div>
						<input class="upload-name" value="파일선택" disabled="disabled">
						<input type="file" name="file" id="profile_img"
							class="upload-hidden" accept="image/*">
					</div></li>
				<li><button class="bttn bttn_sbm2" id="change">변환</button>
				</li>
			</ul>
	</div>
	<div class="zzz">
		<h1>변환전</h1>
		<img src="data:image/jpeg;base64,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">
	</div>
</section>



<script>
//이미지 업로드 로직
let fileTarget = $('.filebox .upload-hidden');
let filename = "";

fileTarget.on('change', function() {
    if (window.FileReader) {
        filename = $(this)[0].files[0]?.name;
    } else {
        filename = $(this).val().split('/').pop().split('\\').pop();
    }

    $(this).siblings('.upload-name').val(filename);
});

// 이미지 미리보기 및 유효성 검사 (확장자 & 용량)
let imgTarget = $('.preview-image .upload-hidden');

imgTarget.on('change', function() {
    let file = $(this)[0].files[0];

    if (!file) return;

    // 이미지 MIME 타입 허용 리스트
    let validTypes = ['image/jpeg', 'image/png', 'image/gif', 'image/webp', 'image/bmp'];
    let maxSize = 5 * 1024 * 1024; // 5MB

    // MIME 타입 검사
    if (!validTypes.includes(file.type)) {
        alert('이미지 파일만 업로드할 수 있습니다. (jpg, png, gif, webp 등)');
        $(this).val('');
        $(this).siblings('.upload-name').val(''); // 파일명 초기화
        return;
    }

    // 파일 용량 검사
    if (file.size > maxSize) {
        alert('5MB 이하의 이미지만 업로드할 수 있습니다.');
        $(this).val('');
        $(this).siblings('.upload-name').val('');
        return;
    }

    let parent = $(this).parent();
    let uploadDisplay = parent.find('.upload-display');
    let imgTag = uploadDisplay.find('.upload-thumb');

    if (window.FileReader) {
        let reader = new FileReader();
        reader.onload = function(e) {
            let src = e.target.result;

            if (imgTag.length > 0) {
                imgTag.attr('src', src);
            } else {
                uploadDisplay.html(
                    '<div class="upload-thumb-wrap"><img src="' + src + '" class="upload-thumb"></div>'
                );
            }
        }
        reader.readAsDataURL(file);
    } else {
        // 구형 브라우저 (IE 대응)
        $(this)[0].select();
        $(this)[0].blur();
        let imgSrc = document.selection.createRange().text;

        if (imgTag.length > 0) {
            imgTag[0].style.filter =
                "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\"" +
                imgSrc +
                "\")";
        } else {
            uploadDisplay.html('<div class="upload-thumb-wrap"><img class="upload-thumb"></div>');
            uploadDisplay.find('.upload-thumb')[0].style.filter =
                "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\"" +
                imgSrc +
                "\")";
        }
    }
});




</script>

<script>

<c:if test="${!empty mvo}">
	let userId = "${mvo.id}";
</c:if>

						$('#change').on("click",function(){
							
							$('.zzz h1').text('변환 중');
							// input[type=file]에서 파일 가져오기
						    let fileInput = document.getElementById("profile_img");
						    let file = fileInput.files[0];

						    if (!file) {
						        alert("업로드할 이미지를 선택해주세요.");
						        return;
						    }
								
						    let formData = new FormData();
						    formData.append('file', file);
						    
						    if (typeof userId !== 'undefined') {
						        formData.append('id', userId);
						    }
						    
							$.ajax({                                                              
								data : formData,
								type : "POST",
								// url은 자신의 이미지 업로드 처리 컨트롤러 경로로 설정해주세요.
								url : 'change',  
								contentType : false,
								processData : false,
								enctype : 'multipart/form-data',                                  
								success : function(data) {   										
									console.log(data);
									
									// contextPath를 JSP에서 자바스크립트 변수로 받음
						            let contextPath = "${pageContext.request.contextPath}/";
						            let fullPath = contextPath + data;
									console.log(fullPath);
						            // .zzz 클래스 내부 img 태그의 src 속성 변경
						            $(".zzz img").attr("src", fullPath);
						            
						            $('.zzz h1').text('변환 완료');
								}
							});
					
						});
</script>					


<%@include file="/WEB-INF/views/includes/footer.jsp"%>