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
        <Style ss:ID="s64">
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="12" ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s77">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="12" ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s78">
          <Alignment ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="12" ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s79">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="12" ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s80">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"
             ss:Color="#000000"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="12" ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s81">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="12" ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s173">
          <Borders/>
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="12" ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s174">
          <Font ss:FontName="Times New Roman" x:CharSet="204" x:Family="Roman"
           ss:Size="12" ss:Color="#000000" ss:Bold="1"/>
        </Style>
      </Styles>
      <Worksheet ss:Name="Лист1">
        <Table x:FullColumns="1" x:FullRows="1" ss:StyleID="s64" ss:DefaultRowHeight="15.75">
          <Column ss:StyleID="s64" ss:AutoFitWidth="0" ss:Width="11.25"/>
          <Column ss:Index="3" ss:StyleID="s64" ss:AutoFitWidth="0" ss:Width="97.5"/>
          <Column ss:StyleID="s64" ss:AutoFitWidth="0" ss:Width="60.75"/>
          <Column ss:StyleID="s64" ss:AutoFitWidth="0" ss:Width="58.5"/>
          <Column ss:StyleID="s64" ss:AutoFitWidth="0" ss:Width="59.25"/>
          <Column ss:StyleID="s64" ss:AutoFitWidth="0" ss:Width="61.5"/>
          <Column ss:StyleID="s64" ss:AutoFitWidth="0" ss:Width="64.5"/>
          <Column ss:StyleID="s64" ss:AutoFitWidth="0" ss:Width="69.75"/>
          <Row ss:Index="2">
            <Cell ss:Index="8">
              <Data ss:Type="String">Приложение № 1 </Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:Index="8">
              <Data ss:Type="String">к  договору № <xsl:value-of select="Request/@Number"/></Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:Index="8">
              <Data ss:Type="String">от <xsl:value-of select="rti:FormatDateTime(Request/@RegDate, 'dd.MM.yyyy')"/>г.</Data>
            </Cell>
          </Row>
          <Row ss:Index="7">
            <Cell ss:Index="4" ss:StyleID="s174">
              <Data ss:Type="String">СПЕЦИФИКАЦИЯ № <xsl:value-of select="Request/@Number"/></Data>
            </Cell>
          </Row>
          <Row ss:Index="9">
            <Cell ss:Index="2">
              <Data ss:Type="String"><xsl:value-of select="rti:FormatDateTime(Request/@RegDate, 'dd.MM.yyyy')"/>г.</Data>
            </Cell>
          </Row>
          <Row ss:Height="16.5"/>
          <Row ss:Height="48">
            <Cell ss:Index="2" ss:StyleID="s79">
              <Data ss:Type="String">№ п/п</Data>
            </Cell>
            <Cell ss:StyleID="s80">
              <Data ss:Type="String">Наименование продукции, изделия</Data>
            </Cell>
            <Cell ss:StyleID="s80">
              <Data ss:Type="String">Артикул</Data>
            </Cell>
            <Cell ss:StyleID="s80">
              <Data ss:Type="String">Код</Data>
            </Cell>
            <Cell ss:StyleID="s80">
              <Data ss:Type="String">Ед.измерения</Data>
            </Cell>
            <Cell ss:StyleID="s80">
              <Data ss:Type="String">Кол-во, шт.</Data>
            </Cell>
            <Cell ss:StyleID="s80">
              <Data ss:Type="String">Цена за 1 шт. без НДС</Data>
            </Cell>
            <Cell ss:StyleID="s81">
              <Data ss:Type="String">Сумма в руб. без НДС</Data>
            </Cell>
          </Row>

          <xsl:apply-templates select="RequestDetails/RequestDetail" />

          <Row>
            <Cell ss:Index="7">
              <Data ss:Type="String">Итого:</Data>
            </Cell>
            <Cell ss:Index="9" ss:Formula="=SUM(R[-{count(RequestDetails/RequestDetail)}]C:R[-1]C)">
              <Data ss:Type="Number">1</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:Index="7">
              <Data ss:Type="String">Сумма НДС-18%       </Data>
            </Cell>
            <Cell ss:Index="9" ss:Formula="=R[-1]C*18/100">
              <Data ss:Type="Number">1</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:Index="7">
              <Data ss:Type="String">Всего к оплате:        </Data>
            </Cell>
            <Cell ss:Index="9" ss:Formula="=R[-2]C+R[-1]C">
              <Data ss:Type="Number">1</Data>
            </Cell>
          </Row>
          <Row ss:Index="18">
            <Cell ss:Index="2">
              <Data ss:Type="String">1. Срок изготовления – _________ рабочих дней с момента поступления предоплаты 100 %  на </Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:Index="2">
              <Data ss:Type="String">расчетный счет Поставщика. </Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:Index="2">
              <Data ss:Type="String">2. Условия поставки: самовывоз или отправка транспортной компанией за счет Покупателя.</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:Index="2">
              <Data ss:Type="String">3. Прочие условия:_____________________________________________________________________</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:Index="2">
              <Data ss:Type="String">_____________________________________________________________________________________</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:Index="2">
              <Data ss:Type="String">_____________________________________________________________________________________</Data>
            </Cell>
          </Row>
          <Row ss:Index="26">
            <Cell ss:Index="2">
              <Data ss:Type="String">Директор <xsl:value-of select="Request/Manufacturer/@Name"/></Data>
            </Cell>
            <Cell ss:Index="6">
              <Data ss:Type="String">Директор <xsl:value-of select="Request/Customer/@Name"/></Data>
            </Cell>
          </Row>
          <Row ss:Index="28">
            <Cell ss:Index="2" ss:StyleID="s173">
              <Data ss:Type="String">____________________ / <xsl:value-of select="Request/Manufacturer/@Director"/>
            </Data>
            </Cell>
            <Cell ss:StyleID="s173"/>
            <Cell ss:Index="6" ss:StyleID="s173">
              <Data ss:Type="String">____________________ / <xsl:value-of select="Request/Customer/@Director"/>
            </Data>
            </Cell>
          </Row>
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>
          <Print>
            <ValidPrinterInfo/>
            <PaperSizeIndex>9</PaperSizeIndex>
            <HorizontalResolution>600</HorizontalResolution>
            <VerticalResolution>0</VerticalResolution>
          </Print>
          <Selected/>
          <TopRowVisible>6</TopRowVisible>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>21</ActiveRow>
              <ActiveCol>1</ActiveCol>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
    </Workbook>
  </xsl:template>

  <xsl:template match="RequestDetails/RequestDetail">
    <xsl:call-template name = "RequestDetailRow"/>
  </xsl:template>

  <xsl:template name="RequestDetailRow">
    <Row>
      <Cell ss:Index="2" ss:StyleID="s77">
        <Data ss:Type="Number">
          <xsl:number/>
        </Data></Cell>
      <Cell ss:StyleID="s78">
        <Data ss:Type="String">
          <xsl:value-of select="@FullDetailName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s77"/>
      <Cell ss:StyleID="s77">
        <Data ss:Type="String">
          <xsl:value-of select="Drawing/MeasureUnit/@Code"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s77">
        <Data ss:Type="String">
          <xsl:value-of select="Drawing/MeasureUnit/@Name"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s77">
        <Data ss:Type="Number">
          <xsl:value-of select="@Count"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s77">
        <Data ss:Type="Number">
          <xsl:value-of select="@Price"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s77">
        <Data ss:Type="Number">
          <xsl:value-of select="@Sum"/>
        </Data>
      </Cell>
    </Row>
  </xsl:template>

</xsl:stylesheet>
