<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
  xmlns="urn:schemas-microsoft-com:office:spreadsheet"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:o="urn:schemas-microsoft-com:office:office"
	xmlns:x="urn:schemas-microsoft-com:office:excel"
	xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
	xmlns:html="http://www.w3.org/TR/REC-html40"
	xmlns:rti="urn:rti">

  <xsl:output method="xml" encoding="utf-8" indent="yes" omit-xml-declaration="no"/>

  <xsl:template match="root">

    <xsl:processing-instruction name="mso-application">
      <xsl:text>progid="Excel.Sheet"</xsl:text>
    </xsl:processing-instruction>

    <?mso-application progid="Excel.Sheet"?>
    <Workbook xmlns="urn:schemas-microsoft-com:office:spreadsheet"
     xmlns:o="urn:schemas-microsoft-com:office:office"
     xmlns:x="urn:schemas-microsoft-com:office:excel"
     xmlns:ss="urn:schemas-microsoft-com:office:spreadsheet"
     xmlns:html="http://www.w3.org/TR/REC-html40">
      <Styles>
        <Style ss:ID="Default" ss:Name="Normal">
          <Alignment ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000"/>
          <Interior/>
          <NumberFormat/>
          <Protection/>
        </Style>
        <Style ss:ID="m51624168">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="3"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="3"/>
          </Borders>
        </Style>
        <Style ss:ID="s16">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="3"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s17">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="3"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="3"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="3"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s18">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="3"/>
          </Borders>
        </Style>
        <Style ss:ID="s19">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="3"/>
          </Borders>
          <Interior ss:Color="#C6E0B4" ss:Pattern="Solid"/>
        </Style>
        <Style ss:ID="s190">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="3"/>
          </Borders>
          <Interior ss:Color="#FFC000" ss:Pattern="Solid"/>
        </Style>
        <Style ss:ID="s191">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="3"/>
          </Borders>
        </Style>
        <Style ss:ID="s20">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="3"/>
          </Borders>
        </Style>
        <Style ss:ID="s21">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="3"/>
          </Borders>
          <NumberFormat ss:Format="Short Date"/>
        </Style>
        <Style ss:ID="s22">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Interior ss:Color="#C6E0B4" ss:Pattern="Solid"/>
        </Style>
        <Style ss:ID="s23">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
        </Style>
        <Style ss:ID="s24">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <NumberFormat ss:Format="Short Date"/>
        </Style>
        <Style ss:ID="s25">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Interior ss:Color="#FFD966" ss:Pattern="Solid"/>
        </Style>
        <Style ss:ID="s35">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s37">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="3"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="3"/>
          </Borders>
        </Style>
        <Style ss:ID="s42">
          <Alignment ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="3"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="3"/>
          </Borders>
        </Style>
      </Styles>
      <Worksheet ss:Name="Лист1">
        <Table x:FullColumns="1" x:FullRows="1" ss:DefaultRowHeight="15">
          <Column ss:AutoFitWidth="0" ss:Width="82.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="78.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="70.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="113.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="63.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="73.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="72.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="81"/>
          <Row>
            <Cell ss:MergeAcross="8" ss:StyleID="s35">
              <Data ss:Type="String">
                Заказы и отгрузка по чертежу <xsl:value-of select="rti:FormatDateTime(Report/@StartDate, 'dd.MM.yyyy')"/> - <xsl:value-of select="rti:FormatDateTime(Report/@EndDate, 'dd.MM.yyyy')"/>
              </Data>
            </Cell>
          </Row>


          <xsl:apply-templates select="Drawings/Drawing" />


        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>
          <Print>
            <ValidPrinterInfo/>
            <Scale>66</Scale>
            <PaperSizeIndex>9</PaperSizeIndex>
            <HorizontalResolution>-3</HorizontalResolution>
            <VerticalResolution>-3</VerticalResolution>
          </Print>
          <Selected/>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>24</ActiveRow>
              <ActiveCol>5</ActiveCol>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
    </Workbook>
  </xsl:template>

  <xsl:template match="Drawings/Drawing">
    <Row ss:Height="15.75"/>
    <Row ss:Height="16.5">
      <Cell ss:MergeDown="2" ss:StyleID="s42"/>
      <Cell ss:MergeAcross="1" ss:StyleID="s16">
        <Data ss:Type="String">Чертеж</Data>
      </Cell>
      <Cell ss:StyleID="s16">
        <Data ss:Type="String">Наименование детали</Data>
      </Cell>
      <Cell ss:MergeAcross="4" ss:MergeDown="2" ss:StyleID="m51624168"/>
    </Row>
    <Row ss:Height="16.5">
      <Cell ss:Index="2" ss:StyleID="s18">
        <Data ss:Type="String">
          <xsl:value-of select="@GroupName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s18">
        <Data ss:Type="String">
          <xsl:value-of select="@DrawingName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s18">
        <Data ss:Type="String">
          <xsl:value-of select="@DetailName"/>
        </Data>
      </Cell>
    </Row>
    <Row ss:Height="16.5">
      <Cell ss:Index="2" ss:MergeAcross="2" ss:StyleID="s37"/>
    </Row>
    <Row ss:Height="31.5">
      <Cell ss:StyleID="s16">
        <Data ss:Type="String">Статус</Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="String">Заказчик</Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="String">Номер заявки</Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="String">Дата регистрации</Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="String">Количество по заявке</Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="String">№ накладной</Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="String">Дата отгрузки</Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="String">Количество отгруженного</Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="String">Разница</Data>
      </Cell>
    </Row>

    <xsl:apply-templates select="RequestDetails/RequestDetail" />

  </xsl:template>

  <xsl:template match="RequestDetails/RequestDetail">

    <xsl:apply-templates select="Shipments/Shipment" />

  </xsl:template>

  <xsl:template match="Shipments/Shipment">
    <Row ss:Height="16.5">
      <xsl:choose>
        <xsl:when test="@Status != ''">
          <xsl:choose>
            <xsl:when test="@Status = 'выполнено'">
              <Cell ss:StyleID="s19">
                <Data ss:Type="String">
                  <xsl:value-of select="@Status"/>
                </Data>
              </Cell>
            </xsl:when>
            <xsl:when test="@Status = 'не выполнено'">
              <Cell ss:StyleID="s190">
                <Data ss:Type="String">
                  <xsl:value-of select="@Status"/>
                </Data>
              </Cell>
            </xsl:when>
            <xsl:otherwise>
              <Cell ss:StyleID="s191">
                <Data ss:Type="String">
                  <xsl:value-of select="@Status"/>
                </Data>
              </Cell>
            </xsl:otherwise>
          </xsl:choose>
          <Cell ss:StyleID="s20">
            <Data ss:Type="String">
              <xsl:value-of select="../../@CustomerName"/>
            </Data>
          </Cell>
          <Cell ss:StyleID="s20">
            <Data ss:Type="Number">
              <xsl:value-of select="../../@RequestNumber"/>
            </Data>
          </Cell>
          <Cell ss:StyleID="s21">
            <Data ss:Type="String">
              <xsl:value-of select="rti:FormatDateTime(../../@RequestRegDate, 'dd.MM.yyyy')"/>
            </Data>
          </Cell>
          <Cell ss:StyleID="s20">
            <Data ss:Type="Number">
              <xsl:value-of select="../../@RequestCount"/>
            </Data>
          </Cell>
        </xsl:when>
        <xsl:otherwise>
          <Cell ss:StyleID="s191">
            <Data ss:Type="String">
            </Data>
          </Cell>
          <Cell ss:StyleID="s20">
            <Data ss:Type="String">
            </Data>
          </Cell>
          <Cell ss:StyleID="s20">
            <Data ss:Type="String">
            </Data>
          </Cell>
          <Cell ss:StyleID="s21">
            <Data ss:Type="String">
            </Data>
          </Cell>
          <Cell ss:StyleID="s20">
            <Data ss:Type="String">
            </Data>
          </Cell>
        </xsl:otherwise>
      </xsl:choose>
      <Cell ss:StyleID="s20">
        <Data ss:Type="Number">
          <xsl:value-of select="@ShipmentNumber"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s21">
        <Data ss:Type="String">
          <xsl:value-of select="rti:FormatDateTime(@ShipmentDate, 'dd.MM.yyyy')"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s20">
        <Data ss:Type="Number">
          <xsl:value-of select="@ShipmentCount"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s20">
        <Data ss:Type="Number">
          <xsl:value-of select="@RemainedCount"/>
        </Data>
      </Cell>
    </Row>
  </xsl:template>

</xsl:stylesheet>
