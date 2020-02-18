<%-- 
    Document   : theory
    Created on : Feb 13, 2020, 9:19:04 AM
    Author     : TUF FX504
--%>

<%@page import="models.StudyClass"%>
<%@page import="models.Employee"%>
<%@page import="models.Theory"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Material Design Bootstrap</title>
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="css/mdb.min.css" rel="stylesheet">
        <!-- Your custom styles (optional) -->
        <link href="css/style.min.css" rel="stylesheet">

        <!-- coba modal -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>  
        <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />-->  
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
        <!-- coba modal -->


        <!--        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        
                <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.css"/>
        
                <script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
                <script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.js"></script>-->

        <!--        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>-->
        <!--
                <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.css"/>
                <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.js"></script>-->

        <!--        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">-->


        <script>
            $(document).ready(function () {
                $('#d_table').DataTable();
            });
        </script>

        <style>

            .map-container{
                overflow:hidden;
                padding-bottom:56.25%;
                position:relative;
                height:0;
            }
            .map-container iframe{
                left:0;
                top:0;
                height:100%;
                width:100%;
                position:absolute;
            }
            * {
                box-sizing: border-box;
            }

            body {
                background-color: #f1f1f1;
            }

            #regForm {
                background-color: #ffffff;
                margin: 100px auto;
                font-family: Raleway;
                padding: 40px;
                width: 70%;
                min-width: 300px;
            }

            h1 {
                text-align: center;  
            }

            input {
                padding: 10px;
                width: 100%;
                font-size: 17px;
                font-family: Raleway;
                border: 1px solid #aaaaaa;
            }

            /* Mark input boxes that gets an error on validation: */
            input.invalid {
                background-color: #ffdddd;
            }

            /* Hide all steps by default: */
            .tab {
                display: none;
            }

            button {
                background-color: #4CAF50;
                color: #ffffff;
                border: none;
                padding: 10px 20px;
                font-size: 17px;
                font-family: Raleway;
                cursor: pointer;
            }

            button:hover {
                opacity: 0.8;
            }

            #prevBtn {
                background-color: #bbbbbb;
            }

            /* Make circles that indicate the steps of the form: */
            .step {
                height: 15px;
                width: 15px;
                margin: 0 2px;
                background-color: #bbbbbb;
                border: none;  
                border-radius: 50%;
                display: inline-block;
                opacity: 0.5;
            }

            .step.active {
                opacity: 1;
            }

            /* Mark the steps that are finished and valid: */
            .step.finish {
                background-color: #4CAF50;
            }
        </style>
    </head>
    <% // //script plate
        if (session.getAttribute("theorysession") == null) {
            response.sendRedirect("theory");
        } else {
            List<Theory> theory = (List<Theory>) session.getAttribute("theorysession");
            List<Employee> emp = (List<Employee>) session.getAttribute("employeesession");
            List<StudyClass> classs = (List<StudyClass>) session.getAttribute("classsession");
//            
    %>

    <body class="grey lighten-3">

        <!--Main Navigation-->
        <!--header-->
        <%@include file="header_dashboard.jsp" %>
        <!--end header-->
        <!--Main Navigation-->

        <!--Main layout-->
        <main class="pt-5 mx-lg-5">
            <div class="container-fluid mt-5">

                <!-- Heading -->
                <div class="card mb-4 wow fadeIn">

                    <!--Card content-->
                    <div class="card-body d-sm-flex justify-content-between">

                        <h4 class="mb-2 mb-sm-0 pt-1">
                            <a href="https://mdbootstrap.com/docs/jquery/" target="_blank">Home Page</a>
                            <span>/</span>
                            <span>Dashboards</span>
                        </h4>

                        <form class="d-flex justify-content-center">
                            <!-- Default input -->
                            <input type="search" placeholder="Type your query" aria-label="Search" class="form-control">
                            <button class="btn btn-primary btn-sm my-0 p" type="submit">
                                <i class="fas fa-search"></i>
                            </button>

                        </form>

                    </div>

                </div>
                <!-- Heading -->

                <!--Grid row-->
                <div class="row wow fadeIn">
                    <div class="col-md-12 mb-4">
                        <div class="card">
                            <div class="card-title">
                                <h1>Data Theory</h1>
                            </div>
                            <div class="card-body">

                                <table  id="d_table" class="table table-striped table-bordered">
                                    <thead class="thead-dark">

                                        <tr>
                                            <th>No</th>
                                            <th>Id</th>
                                            <th>Title</th>
                                            <th>Definition</th>
                                            <th>File Matery</th>
                                            <th>Creator</th>
                                            <th>Study Class</th>
                                            <th>Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% int i = 1; %>
                                        <% for (Theory thr : theory) { %>
                                        <tr>
                                            <td><% out.print(i++); %></td>
                                            <td><% out.print(thr.getId()); %></td>
                                            <td><% out.print(thr.getTheoryTitle()); %></td>
                                            <td><% out.print(thr.getTheoryDefiniton()); %></td>
                                            <td><% out.print(thr.getFileMatery()); %></td>
                                            <td><% out.print(thr.getCreator().getName()); %></td>
                                            <td><% out.print(thr.getStudyClass().getName()); %></td>
                                            <td>

                                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#UpdateModal" id="<% out.print(thr.getId()); %>" >
                                                    Update
                                                </button>
                                                <a href="region?action=delete&id=<% out.print(thr.getId()); %>">
                                                    <button type="button" class="btn btn-danger">Delete</button>
                                                </a>






<!--            <a href="region?action=update&id=<% out.print(thr.getId()); %>">Update</a>-->
                                            </td>
                                        </tr>    
                                        <% }%>
                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                </div>

                <div id="dataModal" class="modal fade">  
                    <div class="modal-dialog">  
                        <div class="modal-content">  
                            <div class="modal-header">  
                                <button type="button" class="close" data-dismiss="modal">&times;</button>  
                                <h4 class="modal-title">Employee Details</h4>  
                            </div>  
                            <div class="modal-body" id="employee_detail">  
                            </div>  
                            <div class="modal-footer">  
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>  
                            </div>  
                        </div>  
                    </div>  
                </div>  
                <div id="add_data_Modal" class="modal fade">  
                    <div class="modal-dialog">  
                        <div class="modal-content">  
                            <div class="modal-header">  
                                <button type="button" class="close" data-dismiss="modal">&times;</button>  
                                <h4 class="modal-title">PHP Ajax Update MySQL Data Through Bootstrap Modal</h4>  
                            </div>  
                            <div class="modal-body">  
                                <form method="post" id="insert_form">  
                                    <label>Enter Employee Name</label>  
                                    <input type="text" name="name" id="name" class="form-control" />  
                                    <br />  
                                    <label>Enter Employee Address</label>  
                                    <textarea name="address" id="address" class="form-control"></textarea>  
                                    <br />  
                                    <label>Select Gender</label>  
                                    <select name="gender" id="gender" class="form-control">  
                                        <option value="Male">Male</option>  
                                        <option value="Female">Female</option>  
                                    </select>  
                                    <br />  
                                    <label>Enter Designation</label>  
                                    <input type="text" name="designation" id="designation" class="form-control" />  
                                    <br />  
                                    <label>Enter Age</label>  
                                    <input type="text" name="age" id="age" class="form-control" />  
                                    <br />  
                                    <input type="hidden" name="employee_id" id="employee_id" />  
                                    <input type="submit" name="insert" id="insert" value="Insert" class="btn btn-success" />  
                                </form>  
                            </div>  
                            <div class="modal-footer">  
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>  
                            </div>  
                        </div>  
                    </div>  
                </div>  
                                    
                                    <div class="row wow fadeIn">
            <div class="col-md-12 mb-4">
                <div class="card">
                    <div class="card-title">
                        <h1>Theory Input</h1>
                    </div>
                    <div class="card-body">
                        <form action="theory" method="POST">
                            <input type="text" name="title" placeholder="title" class="form-control">
                            <input type="text" name="definition" placeholder="definiton" class="form-control">
                            <textarea name="file"class="form-control" rows="3"></textarea>

                            <select class="form-control" name="creator" >
                                <% for (Employee e : emp) {%>
                                <option value="<%=e.getId()%>"><%=e.getName()%></option>
                                <% } %>

                            </select>
                            <select class="form-control" name="class" >
                                <% for (StudyClass c : classs) {%>
                                <option value="<%=c.getId()%>"><%=c.getName()%></option>
                                <% } %>

                            </select>
                            <button type="submit" class="btn btn-primary">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        </main>
        
        <!--Main layout-->

        <!--Footer-->
        <footer class="page-footer text-center font-small primary-color-dark darken-2 mt-4 wow fadeIn">

            <!--Call to action-->
            <div class="pt-4">
                <a class="btn btn-outline-white" href="https://mdbootstrap.com/docs/jquery/getting-started/download/" target="_blank"
                   role="button">Download
                    MDB
                    <i class="fas fa-download ml-2"></i>
                </a>
                <a class="btn btn-outline-white" href="https://mdbootstrap.com/education/bootstrap/" target="_blank" role="button">Start
                    free tutorial
                    <i class="fas fa-graduation-cap ml-2"></i>
                </a>
            </div>
            <!--/.Call to action-->

            <hr class="my-4">

            <!-- Social icons -->
            <div class="pb-4">
                <a href="https://www.facebook.com/mdbootstrap" target="_blank">
                    <i class="fab fa-facebook-f mr-3"></i>
                </a>

                <a href="https://twitter.com/MDBootstrap" target="_blank">
                    <i class="fab fa-twitter mr-3"></i>
                </a>

                <a href="https://www.youtube.com/watch?v=7MUISDJ5ZZ4" target="_blank">
                    <i class="fab fa-youtube mr-3"></i>
                </a>

                <a href="https://plus.google.com/u/0/b/107863090883699620484" target="_blank">
                    <i class="fab fa-google-plus mr-3"></i>
                </a>

                <a href="https://dribbble.com/mdbootstrap" target="_blank">
                    <i class="fab fa-dribbble mr-3"></i>
                </a>

                <a href="https://pinterest.com/mdbootstrap" target="_blank">
                    <i class="fab fa-pinterest mr-3"></i>
                </a>

                <a href="https://github.com/mdbootstrap/bootstrap-material-design" target="_blank">
                    <i class="fab fa-github mr-3"></i>
                </a>

                <a href="http://codepen.io/mdbootstrap/" target="_blank">
                    <i class="fab fa-codepen mr-3"></i>
                </a>
            </div>
            <!-- Social icons -->

            <!--Copyright-->
            <div class="footer-copyright py-3">
                © 2019 Copyright:
                <a href="https://mdbootstrap.com/education/bootstrap/" target="_blank"> MDBootstrap.com </a>
            </div>
            <!--/.Copyright-->

        </footer>
        <!--/.Footer-->

        <form action="region" method="POST">
            <div class="modal fade" id="UpdateModal"
                 tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Update</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>Id</label>
                                <!--<input type="hidden" name="action" value="update" readonly="readonly" />-->
                                <input type="text"  readonly class="form-control-plaintext" name="id"  readonly />
                            </div>
                            <div class="form-group">
                                <label>Title</label>
                                <input type="text" class="form-control" name="name"  />
                            </div>
                            <div class="form-group">
                                <label>Definition</label>
                                <input type="text" class="form-control" name="def"  />
                            </div>
                            <div class="form-group">
                                <label>File Matery</label>
                                <input type="text" class="form-control" name="file"  />
                            </div>

                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Update</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>


        <!-- SCRIPTS -->

        <!-- JQuery -->
        <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript" src="js/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript" src="js/mdb.min.js"></script>
        <!-- Initializations -->
        <script type="text/javascript">
            // Animations initialization
            new WOW().init();

        </script>



        <!-- Charts -->
        <script>
            // Line
            var ctx = document.getElementById("myChart").getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"],
                    datasets: [{
                            label: '# of Votes',
                            data: [12, 19, 3, 5, 2, 3],
                            backgroundColor: [
                                'rgba(255, 99, 132, 0.2)',
                                'rgba(54, 162, 235, 0.2)',
                                'rgba(255, 206, 86, 0.2)',
                                'rgba(75, 192, 192, 0.2)',
                                'rgba(153, 102, 255, 0.2)',
                                'rgba(255, 159, 64, 0.2)'
                            ],
                            borderColor: [
                                'rgba(255,99,132,1)',
                                'rgba(54, 162, 235, 1)',
                                'rgba(255, 206, 86, 1)',
                                'rgba(75, 192, 192, 1)',
                                'rgba(153, 102, 255, 1)',
                                'rgba(255, 159, 64, 1)'
                            ],
                            borderWidth: 1
                        }]
                },
                options: {
                    scales: {
                        yAxes: [{
                                ticks: {
                                    beginAtZero: true
                                }
                            }]
                    }
                }
            });

            //pie
            var ctxP = document.getElementById("pieChart").getContext('2d');
            var myPieChart = new Chart(ctxP, {
                type: 'pie',
                data: {
                    labels: ["Red", "Green", "Yellow", "Grey", "Dark Grey"],
                    datasets: [{
                            data: [300, 50, 100, 40, 120],
                            backgroundColor: ["#F7464A", "#46BFBD", "#FDB45C", "#949FB1", "#4D5360"],
                            hoverBackgroundColor: ["#FF5A5E", "#5AD3D1", "#FFC870", "#A8B3C5", "#616774"]
                        }]
                },
                options: {
                    responsive: true,
                    legend: false
                }
            });


            //line
            var ctxL = document.getElementById("lineChart").getContext('2d');
            var myLineChart = new Chart(ctxL, {
                type: 'line',
                data: {
                    labels: ["January", "February", "March", "April", "May", "June", "July"],
                    datasets: [{
                            label: "My First dataset",
                            backgroundColor: [
                                'rgba(105, 0, 132, .2)',
                            ],
                            borderColor: [
                                'rgba(200, 99, 132, .7)',
                            ],
                            borderWidth: 2,
                            data: [65, 59, 80, 81, 56, 55, 40]
                        },
                        {
                            label: "My Second dataset",
                            backgroundColor: [
                                'rgba(0, 137, 132, .2)',
                            ],
                            borderColor: [
                                'rgba(0, 10, 130, .7)',
                            ],
                            data: [28, 48, 40, 19, 86, 27, 90]
                        }
                    ]
                },
                options: {
                    responsive: true
                }
            });


            //radar
            var ctxR = document.getElementById("radarChart").getContext('2d');
            var myRadarChart = new Chart(ctxR, {
                type: 'radar',
                data: {
                    labels: ["Eating", "Drinking", "Sleeping", "Designing", "Coding", "Cycling", "Running"],
                    datasets: [{
                            label: "My First dataset",
                            data: [65, 59, 90, 81, 56, 55, 40],
                            backgroundColor: [
                                'rgba(105, 0, 132, .2)',
                            ],
                            borderColor: [
                                'rgba(200, 99, 132, .7)',
                            ],
                            borderWidth: 2
                        }, {
                            label: "My Second dataset",
                            data: [28, 48, 40, 19, 96, 27, 100],
                            backgroundColor: [
                                'rgba(0, 250, 220, .2)',
                            ],
                            borderColor: [
                                'rgba(0, 213, 132, .7)',
                            ],
                            borderWidth: 2
                        }]
                },
                options: {
                    responsive: true
                }
            });

            //doughnut
            var ctxD = document.getElementById("doughnutChart").getContext('2d');
            var myLineChart = new Chart(ctxD, {
                type: 'doughnut',
                data: {
                    labels: ["Red", "Green", "Yellow", "Grey", "Dark Grey"],
                    datasets: [{
                            data: [300, 50, 100, 40, 120],
                            backgroundColor: ["#F7464A", "#46BFBD", "#FDB45C", "#949FB1", "#4D5360"],
                            hoverBackgroundColor: ["#FF5A5E", "#5AD3D1", "#FFC870", "#A8B3C5", "#616774"]
                        }]
                },
                options: {
                    responsive: true
                }
            });

        </script>

        <!--Google Maps-->
        <script src="https://maps.google.com/maps/api/js"></script>
        <script>
            // Regular map
            function regular_map() {
                var var_location = new google.maps.LatLng(40.725118, -73.997699);

                var var_mapoptions = {
                    center: var_location,
                    zoom: 14
                };

                var var_map = new google.maps.Map(document.getElementById("map-container"),
                        var_mapoptions);

                var var_marker = new google.maps.Marker({
                    position: var_location,
                    map: var_map,
                    title: "New York"
                });
            }

            new Chart(document.getElementById("horizontalBar"), {
                "type": "horizontalBar",
                "data": {
                    "labels": ["Red", "Orange", "Yellow", "Green", "Blue", "Purple", "Grey"],
                    "datasets": [{
                            "label": "My First Dataset",
                            "data": [22, 33, 55, 12, 86, 23, 14],
                            "fill": false,
                            "backgroundColor": ["rgba(255, 99, 132, 0.2)", "rgba(255, 159, 64, 0.2)",
                                "rgba(255, 205, 86, 0.2)", "rgba(75, 192, 192, 0.2)",
                                "rgba(54, 162, 235, 0.2)",
                                "rgba(153, 102, 255, 0.2)", "rgba(201, 203, 207, 0.2)"
                            ],
                            "borderColor": ["rgb(255, 99, 132)", "rgb(255, 159, 64)", "rgb(255, 205, 86)",
                                "rgb(75, 192, 192)", "rgb(54, 162, 235)", "rgb(153, 102, 255)",
                                "rgb(201, 203, 207)"
                            ],
                            "borderWidth": 1
                        }]
                },
                "options": {
                    "scales": {
                        "xAxes": [{
                                "ticks": {
                                    "beginAtZero": true
                                }
                            }]
                    }
                }
            });

        </script>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/dataTables.jqueryui.min.css"/>

        <script type="text/javascript" src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/1.10.15/js/dataTables.jqueryui.min.js"></script>F

        <!-- coba dulu --->
<script>  
$(document).ready(function() {
    $('#example').DataTable( {
        responsive: {
            details: {
                display: $.fn.dataTable.Responsive.display.modal( {
                    header: function ( row ) {
                        var data = row.data();
                        return 'Details for '+data[0]+' '+data[1];
                    }
                } ),
                renderer: $.fn.dataTable.Responsive.renderer.tableAll( {
                    tableClass: 'table'
                } )
            }
        }
    } );
} );
</script>
        <!-- coba dulu --->
        <script>
            $(document).ready(function () {
                $('#add').click(function () {
                    $('#insert').val("Insert");
                    $('#insert_form')[0].reset();
                });
                $(document).on('click', '.edit_data', function () {
                    var employee_id = $(this).attr("id");
                    $.ajax({
                        url: "fetch.php",
                        method: "POST",
                        data: {employee_id: employee_id},
                        dataType: "json",
                        success: function (data) {
                            $('#name').val(data.name);
                            $('#address').val(data.address);
                            $('#gender').val(data.gender);
                            $('#designation').val(data.designation);
                            $('#age').val(data.age);
                            $('#employee_id').val(data.id);
                            $('#insert').val("Update");
                            $('#add_data_Modal').modal('show');
                        }
                    });
                });
                $('#insert_form').on("submit", function (event) {
                    event.preventDefault();
                    if ($('#name').val() == "")
                    {
                        alert("Name is required");
                    } else if ($('#address').val() == '')
                    {
                        alert("Address is required");
                    } else if ($('#designation').val() == '')
                    {
                        alert("Designation is required");
                    } else if ($('#age').val() == '')
                    {
                        alert("Age is required");
                    } else
                    {
                        $.ajax({
                            url: "insert.php",
                            method: "POST",
                            data: $('#insert_form').serialize(),
                            beforeSend: function () {
                                $('#insert').val("Inserting");
                            },
                            success: function (data) {
                                $('#insert_form')[0].reset();
                                $('#add_data_Modal').modal('hide');
                                $('#employee_table').html(data);
                            }
                        });
                    }
                });
                $(document).on('click', '.view_data', function () {
                    var employee_id = $(this).attr("id");
                    if (employee_id != '')
                    {
                        $.ajax({
                            url: "select.php",
                            method: "POST",
                            data: {employee_id: employee_id},
                            success: function (data) {
                                $('#employee_detail').html(data);
                                $('#dataModal').modal('show');
                            }
                        });
                    }
                });
            });
        </script>
        <!-- coba dulu --->
        <script>
            $(document).ready(function() {

  var dataSet = [
    [1,"Tiger Nixon", "System Architect", "Edinburgh", "5421", "2011/04/25", "$320,800"],
    [2,"Garrett Winters", "Accountant", "Tokyo", "8422", "2011/07/25", "$170,750"],
    [3,"Ashton Cox", "Junior Technical Author", "San Francisco", "1562", "2009/01/12", "$86,000"],
    [4,"Cedric Kelly", "Senior Javascript Developer", "Edinburgh", "6224", "2012/03/29", "$433,060"],
    [5,"Airi Satou", "Accountant", "Tokyo", "5407", "2008/11/28", "$162,700"],
    [6,"Brielle Williamson", "Integration Specialist", "New York", "4804", "2012/12/02", "$372,000"],
    [7,"Herrod Chandler", "Sales Assistant", "San Francisco", "9608", "2012/08/06", "$137,500"],
    [8,"Rhona Davidson", "Integration Specialist", "Tokyo", "6200", "2010/10/14", "$327,900"],
    [9,"Colleen Hurst", "Javascript Developer", "San Francisco", "2360", "2009/09/15", "$205,500"],
    [10,"Sonya Frost", "Software Engineer", "Edinburgh", "1667", "2008/12/13", "$103,600"],
    [11,"Jena Gaines", "Office Manager", "London", "3814", "2008/12/19", "$90,560"],
    [12,"Quinn Flynn", "Support Lead", "Edinburgh", "9497", "2013/03/03", "$342,000"],
    [13,"Charde Marshall", "Regional Director", "San Francisco", "6741", "2008/10/16", "$470,600"],
    [14,"Haley Kennedy", "Senior Marketing Designer", "London", "3597", "2012/12/18", "$313,500"],
    [15,"Tatyana Fitzpatrick", "Regional Director", "London", "1965", "2010/03/17", "$385,750"],
    [16,"Michael Silva", "Marketing Designer", "London", "1581", "2012/11/27", "$198,500"],
    [17,"Paul Byrd", "Chief Financial Officer (CFO)", "New York", "3059", "2010/06/09", "$725,000"],
    [18,"Gloria Little", "Systems Administrator", "New York", "1721", "2009/04/10", "$237,500"],
    [19,"Bradley Greer", "Software Engineer", "London", "2558", "2012/10/13", "$132,000"],
    [20,"Dai Rios", "Personnel Lead", "Edinburgh", "2290", "2012/09/26", "$217,500"],
    [21,"Jenette Caldwell", "Development Lead", "New York", "1937", "2011/09/03", "$345,000"],
    [22,"Yuri Berry", "Chief Marketing Officer (CMO)", "New York", "6154", "2009/06/25", "$675,000"],
    [23,"Caesar Vance", "Pre-Sales Support", "New York", "8330", "2011/12/12", "$106,450"],
    [24,"Doris Wilder", "Sales Assistant", "Sidney", "3023", "2010/09/20", "$85,600"],
    [25,"Angelica Ramos", "Chief Executive Officer (CEO)", "London", "5797", "2009/10/09", "$1,200,000"],
    [26,"Gavin Joyce", "Developer", "Edinburgh", "8822", "2010/12/22", "$92,575"],
    [27,"Jennifer Chang", "Regional Director", "Singapore", "9239", "2010/11/14", "$357,650"],
    [28,"Brenden Wagner", "Software Engineer", "San Francisco", "1314", "2011/06/07", "$206,850"],
    [29,"Fiona Green", "Chief Operating Officer (COO)", "San Francisco", "2947", "2010/03/11", "$850,000"],
    [30,"Shou Itou", "Regional Marketing", "Tokyo", "8899", "2011/08/14", "$163,000"],
    [31,"Michelle House", "Integration Specialist", "Sidney", "2769", "2011/06/02", "$95,400"],
    [32,"Suki Burks", "Developer", "London", "6832", "2009/10/22", "$114,500"],
    [33,"Prescott Bartlett", "Technical Author", "London", "3606", "2011/05/07", "$145,000"],
    [34,"Gavin Cortez", "Team Leader", "San Francisco", "2860", "2008/10/26", "$235,500"],
    [35,"Martena Mccray", "Post-Sales support", "Edinburgh", "8240", "2011/03/09", "$324,050"],
    [36,"Unity Butler", "Marketing Designer", "San Francisco", "5384", "2009/12/09", "$85,675"]
  ];

  var columnDefs = [{
    title: "Id",
    type: "readonly"
  }, {
    title: "Name",
    type: "text"
  }, {
    title: "Position",
    type: "text"
  }, {
    title: "Office"
    //no type = text
  }, {
    title: "Extn.",
    type: "text"
  }, {
    title: "Start date",
    type: "readonly"
  }, {
    title: "Salary",
    type: "text"
  }];

  var myTable;

  myTable = $('#example').DataTable({
    "sPaginationType": "full_numbers",
    data: dataSet,
    columns: columnDefs,
		dom: 'Bfrtip',        // Needs button container
          select: 'single',
          responsive: true,
          altEditor: true,     // Enable altEditor
          buttons: [{
            text: 'Add',
            name: 'add'        // do not change name
          },
          {
            extend: 'selected', // Bind to Selected row
            text: 'Edit',
            name: 'edit'        // do not change name
          },
          {
            extend: 'selected', // Bind to Selected row
            text: 'Delete',
            name: 'delete'      // do not change name
         }]
  });


});


            </script>
    </body>
    <% }

        session.removeAttribute("theorysession");
        session.removeAttribute("employeesession");
        session.removeAttribute("classsession");
    %>
</html>