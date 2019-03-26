
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html lang="en">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://rawgit.com/kangax/fabric.js/master/dist/fabric.min.js"></script>
    <script src="assets/js/main.js" type="text/javascript"></script> 
    <script src="assets/js/customizeJs/html2canvas.js" type="text/javascript"></script>

    <script src="assets/js/customizeJs/jquery-ui.min.js" type="text/javascript"></script>
    <body>
        <style>
            .btn-styl
            {
                background-color: #3b5998;
                border: 1px dotted #3b5998;
                color: #fff;
                font: 15px sans-serif;
                border-radius:1px;
                text-decoration: none;
                cursor: pointer;
                display: inline-block;
                font-size: 14px;
                font-weight: 400;
                line-height: 1.42857;
                margin-bottom: 0;
                padding: 6px 12px;
                text-align: center; 
                vertical-align: middle;
            }
            .btn-styl option
            {
                background-color: #fff;
                color:#333;
            }
            .tsrt-cstm-style
            {
                display: block;
            }
            @media(max-width:991px) and (min-width:768px)
            {
                .tsrt-cstm-style
                {
                    margin-left: 25%;
                } 
            }
            .cust-img-show
            {
                display:  block;
            }
            .cust-img-hide
            {
                display:  none;
                font-size: 25px;
                color:#c22222;
            }
            @media(max-width:600px)
            {
                .cust-img-show
                {
                    display:  none;
                }
                .cust-img-hide
                {
                    display:  block;
                }
            }   
            @media(min-width:934px)
            {
                .viewside-txt-shrt{
                    padding-right:364px;
                }
                .view-txt-modal{
                    display:none;   
                }
            }
            @media(max-width:934px)
            {
                .hdn-txt-modal{
                    display:none;
                }
                .view-txt-modal{
                    font-size:20px;
                }
            }


        </style>

        <div class="container-fluid">
            <div class="cust-img-show">
                <div class="row">
                    <div class="col-lg-12 col-md-12  col-sm-12 col-xs-12 tsrt-cstm-style">
                        <div class="text-center" style="font-size:25px;margin-top:17px;margin-bottom: 30px;">
                            <strong>Your Customize T-Shirt Here</strong> 
                        </div>
                    </div>
                </div>
                <div class="row" style="border-top:1px solid #c2c2c2;border-bottom:1px solid #c2c2c2">
                    <div class="col-lg-7 col-md-7 col-sm-9 col-xs-12  tsrt-cstm-style" style="margin-top:35px;margin-bottom: 25px;">

                        <div style="float:left;">
                            <div style="width:650px;height:400px;border:1px solid #c4c4c4" class="bg-thsirt-img  frnt-tshirt"   id="widget">
                                <canvas id="canvas" style="margin-left:15px;margin-top:10px;box-shadow: rgba(0,0,0,0.2) 0 0 10px;" width="615" height="375"></canvas>
                            </div>
                            <div style="width:650px;height:400px;border:1px solid #c4c4c4;display:none;" class="bg-back-thsirt-img  img-responsive back-tshirt" id="widget2">
                                <canvas id="canvas2" style="margin-left:18px;margin-top:12px; box-shadow: rgba(0,0,0,0.2) 0 0 10px;" width="615" height="375"></canvas>
                            </div>
                        </div>
                        <div style="float:left;">
                            <div style="cursor: pointer; box-shadow: rgba(0,0,0,0.2) 0 0 10px;" class="text-center  clik-frntSide-btn">
                                <span class=""><img width="80" height="100" src="assets/img/frontsideTshirt.png"></span><br>

                                <label><input type="radio" name="optradio1" id="frontSideBtn" checked>Front</label><br>
                            </div>
                            <div style="margin-top:5px;cursor: pointer;box-shadow: rgba(0,0,0,0.2) 0 0 10px;" class="text-center clik-backSide-btn">
                                <span class=""><img width="80" height="100" src="assets/img/backsideTshirt.png"></span><br>
                                <label><input type="radio" name="optradio2" id="BckSideBtn">Back</label>
                            </div>
                        </div>

                    </div>
                    <div class="col-sm-1 hidden-xs hidden-sm" style="margin-top:15px;border-right:1px solid #c2c2c2;height:500px"></div>
                    <div class="col-lg-4 col-md-4   col-sm-12 col-xs-12 tsrt-cstm-style" style="margin-top:35px;margin-bottom: 25px;">
                        <div style="float:right;">
                            <span style="margin-top: 15px;" class="inpt-img-frnt"> 
                                <input type="file"   id="file" style="display:none;">
                                <label for="file" class="btn-styl">Upload Image</label>
                            </span>
                            <span style="margin-top: 15px;"> 
                                <button class="btn-styl add-frnt-txt" style="width:93px;" onclick="addText()">Add Text</button>
                            </span>
                            <span style="margin-top: 15px; display:none;" class="inpt-img-back"> 
                                <input type="file" class=""  id="file2"  style="display:none;">
                                <label for="file2" class="btn-styl">Upload Image</label>
                            </span>
                            <span style="margin-top: 15px;">
                                <button class="btn-styl add-back-txt" style="display:none;width:93px;" onclick="addTextback()">Add Text</button>
                            </span>
                            <div style="margin-top: 15px;" class="inpt-img-frnt"> 
                                <button id="remove" class="btn-styl">Remove selected image or text</button>
                            </div>
                            <div style="margin-top: 15px; display:none;" class="inpt-img-back" > 
                                <button id="remove2" class="btn-styl ">Remove selected image or text</button>
                            </div>
                            <div style="clear: both; float: left;margin-top:15px;"> 
                                <select id="font" class="btn-styl btn-styl add-frnt-txt" style="padding:6px 0px;">
                                    <option>Arial</option>
                                    <option>Tahoma</option>
                                    <option>Times new Roman</option>
                                    <option>Pacifico</option>
                                </select>
                            </div> 
                            <div  class="add-back-txt" style="clear: both; float: left; display:none;"> 
                                <select id="fontBack" class="btn-styl" style="padding:6px 0px;">
                                    <option>Arial</option>
                                    <option>Tahoma</option>
                                    <option>Times new Roman</option>
                                    <option>Pacifico</option>
                                </select>
                            </div><br/><br/><br/>
                            <div class="add-frnt-clr" style="margin-top: 10px;">
                                <span style="color:#5a5a5a;font-size: 20px;margin-top: 10px"><strong>Text front Color</strong></span> 
                                <input class="btn btn-default " type="color" value="White" id="fill" style="height:30px;" />
                            </div>

                            <div style="margin-top: 10px;display:none;" class="add-back-clr">
                                <span style="color:#5a5a5a;font-size: 20px;"><strong>  Text Color</strong></span> 
                                <input class="btn btn-default " style=" height: 30px;" type="color" value="White" id="fillBack" style="height:30px;" />
                            </div>
                            <div style="float:left; margin-top: 15px;" class="show-both-canvas">
                                <button  class="btn-styl  " tyle='button' data-target="#myModalFrontside" data-toggle="modal" onclick="onlyImage();
                                        ImageCanvas();
                                        onlyImageBack();
                                        ImageCanvasBack();" style="width:219px;">PREVIEW / BUY</button>  

                                <!--                            <button  class="btn-styl"  style="width:219px" tyle='button' data-target="#myModalBackside" data-toggle="modal" onclick='onlyImageBack();
                                                                    ImageCanvasBack();' >See Back Side (PREVIEW)</button>  -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 text-center">
                    <div style="margin-top: 150px; margin-bottom: 150px;" class="cust-img-hide text-center">
                        For customizing product open site in desktop
                    </div>
                </div>
            </div>
        </div>
        <input type="hidden" id="sendTshirtImgs" data-uri='<c:url value="/p/customize-shirt-toserver"/>'/>  

        <div class="modal fade text-center" id="myModalFrontside" role="dialog">
            <div class="modal-dialog" style="width:100%;">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header hdn-one-cnvs">
                        <button  type="button" class="close" data-dismiss="modal">&times;</button>                       
                    </div>
                    <div class="modal-body">
                        <div class="view-txt-modal"> Front Side View</div>
                        <div style="font-size:20px;" class="hdn-txt-modal"><span class="viewside-txt-shrt">Front Side View</span><span>Back Side View</span></div>
                        <span><img class='imageViewcanvas'></span>
                        <div class="view-txt-modal"> Back Side View</div>
                        <span><img class='imageViewcanvas1'></span>
                    </div>
                    <!--                    <form id="cropImage" action="<c:url value="/media/cust-image/upload/product-attribute"/>"  enctype="multipart/form-data">                                     
                                            <button  type="submit" class="btn btn-danger show-submitBtn center-block">Buy Now</button>                        
                                        </form>-->
                    <div style="margin:50px 0px;" class="text-center shw-sbmt-btn">
                        <input type="button" class="btn btn-danger center-block btn-lg" id="send-tshirt-img" value="Buy Now">                        
                    </div>
                </div>
            </div>
        </div>

        <script>
            var canvas = new fabric.Canvas('canvas');
            document.getElementById('file').addEventListener("change", function (e) {
                var file = e.target.files[0];
                console.log("came 2");
                var reader = new FileReader();
                console.log("came 3");
                reader.onload = function (f) {
                    var data = f.target.result;
                    var img = document.createElement('img');
                    img.src = data;
                    img.onload = function () {
                        if (img.width < 500 || img.height < 500)
                        {
                            alert("upload image should be greater then 500px*500px");
                            //canvas.getActiveObject().remove();
                            canvas.remove(canvas.getActiveObject());
                        }
                    };


                    fabric.Image.fromURL(data, function (img) {
                        // var oImg = img.set({left: 20, top: 20, width: 500, height: 500, angle: 0}).scale(0.9);
                        var oImg = img.set({left: 30, top: 50, angle: 0}).scale(0.9);

                        oImg.scaleToHeight(200);
                        oImg.scaleToWidth(250);

                        canvas.add(oImg).renderAll();
                        var a = canvas.setActiveObject(oImg);

                        var dataURL = canvas.toDataURL({format: 'png', quality: 0.8});

                    });
                };
                reader.readAsDataURL(file);
                console.log("came 4");
            });


            function addText() {
                var oText = new fabric.IText('Tap and Type', {
                    left: 50,
                    fontFamily: 'arial black',
                    top: 100
                });
                canvas.add(oText);
                canvas.setActiveObject(oText);
                $('#fill, #font').trigger('change');
                oText.on('mousedown', function () {
                    // bring the image to front
                    oText.bringToFront();
                });
            }
            $('#fill').change(function () {

                var obj = canvas.getActiveObject();

                if (obj) {
                    // obj.setFill($(this).val());
                    obj.set('fill', $(this).val());
                }
                canvas.renderAll();
            });

            $('#font').change(function () {
                var obj = canvas.getActiveObject();
                if (obj) {
                    obj.set('fontFamily', $(this).val());
                }
                canvas.renderAll();
            });


            var frntImg = null;
            var frntimgcnvas = null;

            function onlyImage() {
                alert('onlyImage 1');
                
                canvas.deactivateAll().renderAll();
                alert('onlyImage 2');
                window.frntImg = canvas.toDataURL();
                alert('onlyImage 3');
            }
            ;


            function ImageCanvas() {
                alert('ImageCanvas');
                html2canvas($("#widget"), {
                    onrendered: function (canvas) {
                        theCanvas = canvas;
                        console.log("came in 2..............................");
                        window.frntimgcnvas = theCanvas.toDataURL();
                        console.log("came in 2..............................");
                        document.querySelector('.imageViewcanvas').src = theCanvas.toDataURL();
                    }
                });
            }
            ;




            var canvas2 = new fabric.Canvas('canvas2');
            document.getElementById('file2').addEventListener("change", function (e) {
                var file2 = e.target.files[0];
                console.log("came2 2");
                var reader = new FileReader();

                console.log("came2 3");
                reader.onload = function (f) {
                    var data = f.target.result;
                    var img = document.createElement('img');
                    img.src = data;

                    img.onload = function () {
                        if (img.width < 500 || img.height < 500)
                        {
                            alert("upload image should be greater then 500px*500px");
                            //canvas2.getActiveObject().remove();
                            canvas2.remove(canvas2.getActiveObject());
                        }
                    };

                    fabric.Image.fromURL(data, function (img) {
                        var oImg2 = img.set({left: 20, top: 20, angle: 0}).scale(0.9);
                        oImg2.scaleToHeight(200);
                        oImg2.scaleToWidth(250);
                        canvas2.add(oImg2).renderAll();
                        var a = canvas2.setActiveObject(oImg2);
                        var dataURL = canvas2.toDataURL({format: 'png', quality: 0.8});

                    });
                };
                reader.readAsDataURL(file2);
                console.log("came 4");
            });
            function addTextback() {
                var oTextBack = new fabric.IText('Tap and Type', {
                    left: 100,
                    fontFamily: 'arial black',
                    top: 100
                });
                canvas2.add(oTextBack);
                canvas2.setActiveObject(oTextBack);
                $('#fillBack, #fontBack').trigger('change');

                oTextBack.on('mousedown', function () {
                    // bring the image to front
                    oTextBack.bringToFront();
                });
            }
            $('#fillBack').change(function () {
                var objBk = canvas2.getActiveObject();
                if (objBk) {
                    //  obj.setFill($(this).val());                  
                    objBk.set('fill', $(this).val());
                }
                canvas2.renderAll();
            });

            $('#fontBack').change(function () {
                var obj = canvas2.getActiveObject();
                if (obj) {
                    obj.set('fontFamily', $(this).val());
                }
                canvas2.renderAll();
            });


            var backimg = null;
            var backImgCanvs = null;


            function onlyImageBack() {
                alert("onlyImageBack");
                canvas2.deactivateAll().renderAll();
                window.backimg = canvas2.toDataURL();
                console.log("came 6");
            }

            function ImageCanvasBack() {
                alert("ImageCanvasBack");
                html2canvas($("#widget2"), {
                    onrendered: function (canvas2) {
                        theCanvas2 = canvas2;
                        window.backImgCanvs = theCanvas2.toDataURL();
                        document.querySelector('.imageViewcanvas1').src = theCanvas2.toDataURL();
                    }
                });
            }

            $('.show-both-canvas').click(function () {
                $('.frnt-tshirt').show();
                $('.back-tshirt').show();
            });
            $('.hdn-one-cnvs').click(function () {
                $('.back-tshirt').hide();
            });


            $('.clik-frntSide-btn').click(function () {
                $('.frnt-tshirt').show();
                $('.back-tshirt').hide();

                $('.inpt-img-frnt').show();
                $('.inpt-img-back').hide();
                $('.add-back-txt').hide();
                $('.add-frnt-txt').show();
                $('.add-back-clr').hide();
                $('.add-frnt-txt').show();
                $('.add-frnt-clr').show();

                $("#frontSideBtn").prop("checked", true);
                $("#BckSideBtn").prop('checked', false);
            });



            $('.clik-backSide-btn').click(function () {

                $('.frnt-tshirt').hide();
                $('.back-tshirt').show();
                $('.frntimg-btn').hide();
                $('.backimg-btn').show();
                $('.inpt-img-back').show();
                $('.inpt-img-frnt').hide();
                $('.add-back-txt').show();
                $('.add-frnt-txt').hide();
                $('.add-back-clr').show();
                $('.add-frnt-clr').hide();

                $("#BckSideBtn").prop("checked", true);
                $("#frontSideBtn").prop('checked', false);
            });



            $('#remove').on('click', function () {
                if (confirm('Are you sure?')) {
                    canvas.remove(canvas.getActiveObject());
                }

            });
            $('#remove2').on('click', function () {

                if (confirm('Are you sure?')) {
                    canvas2.remove(canvas2.getActiveObject());
                }
            });
            $('#send-tshirt-img').click(function () {
                console.log("Anuj 1-------------------------------------------------------------------" + frntImg);
                console.log("Anuj 2-------------------------------------------------------------------" + frntimgcnvas);
                console.log("Anuj 3-------------------------------------------------------------------" + backimg);
                console.log("Anuj 4-------------------------------------------------------------------" + backImgCanvs);
                var url = $("#sendTshirtImgs").data('uri');
                console.log("url...   .      ....." + url);
                alert("url...   .      ..... " + url);
                $.ajax({
                    url: url,
                    type: 'POST',
                    data: {
                        frontimage: frntImg,
                        frontimageCanvas: frntimgcnvas,
                        backImg: backimg,
                        backImgCanvas: backImgCanvs
                    },
                    success: function (response) {
                        alert("a");
                    },
                    complete: function (response) {
                        alert("f");
                    },
                    error: function (response) {
                        alert("e");
                    }
                });
            });
        </script>
        <!--        <script>
                    window.giftBoxUrlforZCust = '<c:url value="/gift-box"/>';
                    window.addCustomizeToGiftBox = '<c:url value="/giftbox/addproduct/${product.productId}/${product.productOfCityId}"/>';
                </script> -->
    </body>
</html>
