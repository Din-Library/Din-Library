<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Agency - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="./resources/assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="./resources/css/styles.css" rel="stylesheet" />
	<meta charset="UTF-8">
	<title>Din Lib</title>
</head>
<body>
        <!-- Portfolio Grid-->
        <section class="page-section bg-light" id="portfolio">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Best Seller</h2>
                    <h3 class="section-subheading text-muted">최근 1주일 동안 가장 많이 판매된 종이책과 전자책을 합산한 순위입니다.</h3>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-sm-6 mb-4">
                        <!-- Portfolio item 1-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal1">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="${cover[0] }" alt="..." width="400px" height="225px"/>
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading"><p style="overflow:hidden; text-overflow: ellipsis; white-space: nowrap;">${title[0] }</p></div>
                                <div class="portfolio-caption-subheading text-muted"><p style="overflow:hidden; text-overflow: ellipsis; white-space: nowrap;">${author[0] }</p></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 mb-4">
                        <!-- Portfolio item 2-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal2">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="${cover[1] }" alt="..." width="400px" height="225px"/>
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading"><p style="overflow:hidden; text-overflow: ellipsis; white-space: nowrap;">${title[1] }</p></div>
                                <div class="portfolio-caption-subheading text-muted"><p style="overflow:hidden; text-overflow: ellipsis; white-space: nowrap;">${author[1] }</p></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 mb-4">
                        <!-- Portfolio item 3-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal3">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="${cover[2] }" alt="..." width="400px" height="225px"/>
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading"><p style="overflow:hidden; text-overflow: ellipsis; white-space: nowrap;">${title[2] }</p></div>
                                <div class="portfolio-caption-subheading text-muted"><p style="overflow:hidden; text-overflow: ellipsis; white-space: nowrap;">${author[2] }</p></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 mb-4">
                        <!-- Portfolio item 4-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal4">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="${cover[3] }" alt="..." width="400px" height="225px"/>
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading"><p style="overflow:hidden; text-overflow: ellipsis; white-space: nowrap;">${title[3] }</p></div>
                                <div class="portfolio-caption-subheading text-muted"><p style="overflow:hidden; text-overflow: ellipsis; white-space: nowrap;">${author[3] }</p></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 mb-4 mb-lg-0">
                        <!-- Portfolio item 5-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal5">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="${cover[4] }" alt="..." width="400px" height="225px"/>
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading"><p style="overflow:hidden; text-overflow: ellipsis; white-space: nowrap;">${title[4] }</p></div>
                                <div class="portfolio-caption-subheading text-muted"><p style="overflow:hidden; text-overflow: ellipsis; white-space: nowrap;">${author[4] }</p></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 mb-4 mb-sm-0">
                        <!-- Portfolio item 6-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal6">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="${cover[5] }" alt="..." width="400px" height="225px"/>
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading"><p style="overflow:hidden; text-overflow: ellipsis; white-space: nowrap;">${title[5] }</p></div>
                                <div class="portfolio-caption-subheading text-muted"><p style="overflow:hidden; text-overflow: ellipsis; white-space: nowrap;">${author[5] }</p></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <!-- Portfolio item 7-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal7">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="${cover[6] }" alt="..." width="400px" height="225px"/>
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading"><p style="overflow:hidden; text-overflow: ellipsis; white-space: nowrap;">${title[6] }</p></div>
                                <div class="portfolio-caption-subheading text-muted"><p style="overflow:hidden; text-overflow: ellipsis; white-space: nowrap;">${author[6] }</p></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6 mb-4 mb-sm-0">
                        <!-- Portfolio item 8-->
                        <div class="portfolio-item">
                            <a class="portfolio-link" data-bs-toggle="modal" href="#portfolioModal8">
                                <div class="portfolio-hover">
                                    <div class="portfolio-hover-content"><i class="fas fa-plus fa-3x"></i></div>
                                </div>
                                <img class="img-fluid" src="${cover[7] }" alt="..." width="400px" height="225px"/>
                            </a>
                            <div class="portfolio-caption">
                                <div class="portfolio-caption-heading"><p style="overflow:hidden; text-overflow: ellipsis; white-space: nowrap;">${title[7] }</p></div>
                                <div class="portfolio-caption-subheading text-muted"><p style="overflow:hidden; text-overflow: ellipsis; white-space: nowrap;">${author[7] }</p></div>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </section>
       
    
        <!-- Portfolio Modals-->
        <!-- Portfolio item 1 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="./resources/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <p class="item-intro text-muted">${categoryName[0] }</p>
                                    <h2 class="text-uppercase">${title[0] }</h2>
                                    <p class="item-intro text-muted">${author[0] }</p>
                                    <img class="img-fluid d-block mx-auto" src="${cover[0] } " alt="..." />
                                    <p>${description[0] }</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Publisher:</strong>
                                            ${publisher[0] }
                                        </li>
                                        <li>
                                            <strong>PubDate:</strong>
                                            ${pubDate[0] }
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-times me-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 2 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="./resources/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <p class="item-intro text-muted">${categoryName[1] }</p>
                                    <h2 class="text-uppercase">${title[1] }</h2>
                                    <p class="item-intro text-muted">${author[1] }</p>
                                    <img class="img-fluid d-block mx-auto" src="${cover[1] }" alt="..." />
                                    <p>${description[1] }</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Publisher:</strong>
                                            ${publisher[1] }
                                        </li>
                                        <li>
                                            <strong>PubDate:</strong>
                                            ${pubDate[1] }
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-times me-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 3 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="./resources/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <p class="item-intro text-muted">${categoryName[2] }</p>
                                    <h2 class="text-uppercase">${title[2] }</h2>
                                    <p class="item-intro text-muted">${author[2] }</p>
                                    <img class="img-fluid d-block mx-auto" src="${cover[2] }" alt="..." />
                                    <p>${description[2] }</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Publisher:</strong>
                                            ${publisher[2] }
                                        </li>
                                        <li>
                                            <strong>PubDate:</strong>
                                            ${pubDate[2] }
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-times me-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 4 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="./resources/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <p class="item-intro text-muted">${categoryName[3] }</p>
                                    <h2 class="text-uppercase">${title[3] }</h2>
                                    <p class="item-intro text-muted">${author[3] }</p>
                                    <img class="img-fluid d-block mx-auto" src="${cover[3] }" alt="..." />
                                    <p>${description[3] }</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Publisher:</strong>
                                            ${publisher[3] }
                                        </li>
                                        <li>
                                            <strong>PubDate:</strong>
                                            ${pubDate[3] }
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-times me-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 5 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="./resources/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <p class="item-intro text-muted">${categoryName[4] }</p>
                                    <h2 class="text-uppercase">${title[4] }</h2>
                                    <p class="item-intro text-muted">${author[4] }</p>
                                    <img class="img-fluid d-block mx-auto" src="${cover[4] }" alt="..." />
                                    <p>${description[4] }</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Publisher:</strong>
                                            ${publisher[4] }
                                        </li>
                                        <li>
                                            <strong>PubDate:</strong>
                                            ${pubDate[4] }
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-times me-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 6 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="./resources/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <p class="item-intro text-muted">${categoryName[5] }</p>
                                    <h2 class="text-uppercase">${title[5] }</h2>
                                    <p class="item-intro text-muted">${author[5] }</p>
                                    <img class="img-fluid d-block mx-auto" src="${cover[5] }" alt="..." />
                                    <p>${description[5] }</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Publisher:</strong>
                                            ${publisher[5] }
                                        </li>
                                        <li>
                                            <strong>PubDate:</strong>
                                            ${pubDate[5] }
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-times me-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 7 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal7" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="./resources/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <p class="item-intro text-muted">${categoryName[6] }</p>
                                    <h2 class="text-uppercase">${title[6] }</h2>
                                    <p class="item-intro text-muted">${author[6] }</p>
                                    <img class="img-fluid d-block mx-auto" src="${cover[6] }" alt="..." />
                                    <p>${description[6] }</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Publisher:</strong>
                                            ${publisher[6] }
                                        </li>
                                        <li>
                                            <strong>PubDate:</strong>
                                            ${pubDate[6] }
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-times me-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio item 8 modal popup-->
        <div class="portfolio-modal modal fade" id="portfolioModal8" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-bs-dismiss="modal"><img src="./resources/assets/img/close-icon.svg" alt="Close modal" /></div>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-8">
                                <div class="modal-body">
                                    <!-- Project details-->
                                    <p class="item-intro text-muted">${categoryName[7] }</p>
                                    <h2 class="text-uppercase">${title[7] }</h2>
                                    <p class="item-intro text-muted">${author[7] }</p>
                                    <img class="img-fluid d-block mx-auto" src="${cover[7] }" alt="..." />
                                    <p>${description[7] }</p>
                                    <ul class="list-inline">
                                        <li>
                                            <strong>Publisher:</strong>
                                            ${publisher[7] }
                                        </li>
                                        <li>
                                            <strong>PubDate:</strong>
                                            ${pubDate[7] }
                                        </li>
                                    </ul>
                                    <button class="btn btn-primary btn-xl text-uppercase" data-bs-dismiss="modal" type="button">
                                        <i class="fas fa-times me-1"></i>
                                        Close
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="./resources/js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>