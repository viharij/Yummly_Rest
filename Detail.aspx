<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Detail.aspx.cs" Inherits="Wings" %>

<%@ Register Src="~/Controls/header.ascx" TagPrefix="uc1" TagName="header" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style/StyleSheet.css" rel="stylesheet" />
    <link href="Style/NutritionStyle.css" rel="stylesheet" />
    <link href="Style/jquery-ui-1.10.3.custom.css" rel="stylesheet" />

</head>
<body class="testimgBody">
    <form id="form1" runat="server">
    <div>
        <header>
                 <div runat="server" class="Top_Container">

                    <asp:Label class="Team_Logo" runat="server">
                        <asp:ImageButton  class="Image_Css" ID="ImageButton1" ImageUrl="~/images/hungry_face.png" runat="server" DescriptionUrl="~\Appetizers.aspx"/>
                     </asp:Label>
                     
                     <asp:Label class="H_Title" runat="server">
                         Appetite (Eat right,be bright)                  
                     </asp:Label>

                 </div>

 </header>

        <div class="sample_image_Con">

         </div>

        <div class="DetailSpace">
            <div id="detailContainer">
                <ul>
                     <li><a href="#tab-1">INGREDIENTS</a></li>
                    <li><a href="#tab-2">NUTRITION FACTS</a></li>
                    <li><a href="#tab-3">RECIPE</a></li>
                </ul>
                <div id="tab-1">
                    
                </div>
                 <div id="tab-2">
                      <section class="performance-facts">
                            <header class="performance-facts__header">
                                 <h1 class="performance-facts__title">Nutrition Facts</h1>
    
                            </header>
                      <table class="performance-facts__table">
                        <thead>
                         <tr>
                            <th colspan="3" class="small-info line">
                                     Amount Per Serving
                            </th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr >
                             <th colspan="3" class="line">
                             <b>Calories  </b>
          
                             </th>
                            
                        </tr>
                        <tr>
                            <td colspan="2">

                            </td>    
                            <td  class="textalign">
                             <b>% Daily Value*</b>
                              </td>
                         </tr>
                         <tr>
                               <th colspan="2">
                                  <b>Total Fat</b>
                                          g
                               </th>
                             <td class="textalign">
                                <b>%</b>
                            </td>
                         </tr>
                         <tr>
                            <td class="blank-cell">
                            </td>
                             <th>
                                  Saturated Fat
                                     g
                             </th>
                             <td class="textalign">
                             <b> %</b>
                             </td>
                        </tr>
                         <tr>
                              <td class="blank-cell">
                              </td>
                              <th>
                                 Trans Fat
                                  0g
                              </th>
                             <td>
                            </td>
                        </tr>
                         <tr>
                            <th colspan="2">
                             <b>Cholesterol</b>
                                 g
                            </th>
                            <td class="textalign">
                             <b> %</b>
                             </td>
                         </tr>
                          <tr>
                              <th colspan="2">
                                  <b>Sodium  </b>
                                  g
                              </th>
                              <td class="textalign">
                                  <b>%</b>
                              </td>
                          </tr>
                            <tr>
                                <th colspan="2">
                                    <b>Total Carbohydrate  </b>
                                    g
                                </th>
                                <td class="textalign">
                                    <b>%</b>
                                </td>
                            </tr>
                            <tr>
                                <td class="blank-cell"></td>
                                <th>  Dietary Fiber 
                                     g
                                </th>
                                <td class="textalign">
                                    <b>%</b>
                                </td>
                            </tr>
                            <tr>
                                <td class="blank-cell"></td>
                                <th><b>Sugars </b>
                                         g
                                </th>
                                <td></td>
                            </tr>
                            <tr class="thick-end ">
                                <th colspan="2" class="line">
                                    <b>Protein</b>
                                    g
                                </th>
                                <td class="line"></td>
                            </tr>
                        </tbody>
                      </table>

                <table class="performance-facts__table--grid">
                    <tbody>
                        <tr>
                            <td colspan="2"><b>Vitamin A  </b>
                                              %
                            </td>
                            <td><b>Vitamin C  </b>
                                              %
                            </td>
                        </tr>
                        <tr class="thin-end">
                            <td colspan="2"><b>Calcium  </b>
                                                %
                            </td>
                            <td>Iron
                                                 %
                            </td>
                        </tr>
                    </tbody>
                </table>

                <p class="notice">* Percent Daily Values are based on a 2,000 calorie diet. Your daily values may be higher or lower depending on your calorie needs.</p>


            </section>
                </div>
                <div id="tab-3">
                    <p>
                       
                    </p>
                </div>
            </div>
        </div>
    
    </div>
    </form>
   
    <script src="Scripts/jquery-2.1.4.js" type="text/javascript"></script>     
    <script src="Scripts/jquery-ui-1.11.4.js" type="text/javascript"></script> 
    <script src="Scripts/Yummly.js"></script>
    <script src="Scripts/PopulateDetail.js"></script>

</body>
</html>
