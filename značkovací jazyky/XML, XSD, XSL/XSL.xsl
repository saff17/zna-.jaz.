<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
        
<xsl:template match="/seznamapps">

    <html>
        <head>
        <title>Komunikační aplikace</title>
        <style>

            .nadpis {
                text-align:center;
                gap: 5px;
                font-size: 50px;                 
            }

            .border-padding1{
                border: 3px solid black;
                padding: 1px;
            }

            .border-padding2 {
                border: 1px solid black;
                padding: 1px;
            }   

            .name-padding {
                margin:3px;
            }

            .name-padding2 {
                margin:20px;
            }

            .green {
                color:green;
            }

            .red {
                color:red;
            }
        </style>
    </head>

    <body>
             
        <xsl:for-each select="komunikacniapp">            
                <xsl:sort select="ID"/>
                         

            <div class="border-padding1">               
                <h3 class="nadpis">
                    <span>
                        <xsl:if test="@vchodu='false'">

                            <span class="red"><xsl:value-of select="nazev"/></span>
                        </xsl:if>   
                        <xsl:if test="@vchodu='true'">

                            <span class="green"><xsl:value-of select="nazev"/></span>
                        </xsl:if>     
                                          
                    </span>
                    </h3>
                    <div class="border-padding2">
                        <span class="name-padding">
                            <xsl:value-of select="Vydavatel" />                         
                            <ul>
                                <li>
                                    Developer: <xsl:value-of select="vydavatel/developer" /> 
                                    <span class="name-padding2">Networth: <xsl:value-of select="vydavatel/@networth"/></span>
                                </li>
                                <li>
                                    Rok vzniku:
                                    <xsl:value-of select="vydavatel/rok_vzniku" />

                                </li>                               
                                <li>
                                    CEO:
                                    <span class=""><xsl:value-of select="vydavatel/CEO/firstname" /></span>                                                                                             
                                    <span class="name-padding "><xsl:value-of select="vydavatel/CEO/surname" /></span>   
                                </li>                       
                            </ul>                   
                        </span>                        
                    </div>

                    <div class="border-padding2">
                        <table class="name-padding2">
                            <tr>                           
                                    <td>Využití v ČR:</td>    
                                    <td><xsl:value-of select="vyuziti_v_CR"/></td>                                                               
                            </tr>
                            <tr>                           
                                <td>Využití v zahraničí:</td>    
                                <td><xsl:value-of select="vyuziti_v_zahranici"/></td>                                                               
                        </tr>
                        <tr>                           
                            <td>Komerční využití:</td>    
                            <td><xsl:value-of select="komercni_vyuziti"/></td>                                                               
                    </tr>
                    <tr>                           
                        <td>Běžné využití:</td>    
                        <td><xsl:value-of select="bezne_vyuziti"/></td>                                                               
                </tr>
                        </table>
                    </div>
                
            </div>
            

        
    
    
    </xsl:for-each>
    </body>


    </html>

</xsl:template>

</xsl:stylesheet>