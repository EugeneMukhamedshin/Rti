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
        <Style ss:ID="s16">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
        </Style>
        <Style ss:ID="s17">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
        </Style>
        <Style ss:ID="s19">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s20">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s21">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="Short Date"/>
        </Style>
        <Style ss:ID="s22">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s25">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s26">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
          <Interior/>
          <NumberFormat ss:Format="Short Date"/>
        </Style>
        <Style ss:ID="s27">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s29">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s30">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
      </Styles>
      <Worksheet ss:Name="Лист1">
        <Table ss:DefaultRowHeight="15">
          <Column ss:Index="3" ss:AutoFitWidth="0" ss:Width="56.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="81.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="90.75" ss:Span="1"/>
          <Column ss:Index="7" ss:AutoFitWidth="0" ss:Width="75.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="60.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="62.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="72.75"/>
          <Row>
            <Cell ss:MergeAcross="9" ss:StyleID="s30">
              <Data ss:Type="String">Накладная на изготовление </Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:StyleID="s17"/>
            <Cell ss:StyleID="s17"/>
            <Cell ss:StyleID="s17"/>
            <Cell ss:StyleID="s17"/>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Номер документа</Data>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Дата составления</Data>
            </Cell>
            <Cell ss:StyleID="s17"/>
            <Cell ss:StyleID="s17"/>
            <Cell ss:StyleID="s17"/>
            <Cell ss:StyleID="s17"/>
          </Row>
          <Row>
            <Cell ss:Index="5" ss:StyleID="s20">
              <Data ss:Type="Number">
                <xsl:value-of select="WorkItemPackage/@Id"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s21">
              <Data ss:Type="String"><xsl:value-of select="rti:FormatDate(WorkItemPackage/@Date)"/></Data>
            </Cell>
          </Row>
          <Row ss:Index="5">
            <Cell ss:MergeDown="1" ss:StyleID="s25">
              <Data ss:Type="String">№</Data>
            </Cell>
            <Cell ss:MergeAcross="2" ss:StyleID="s29">
              <Data ss:Type="String">Товар</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="s25">
              <Data ss:Type="String">Материал</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="s25">
              <Data ss:Type="String">Способ изготовления</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="s25">
              <Data ss:Type="String">Исполнитель</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="s25">
              <Data ss:Type="String">Дневное задание</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="s25">
              <Data ss:Type="String">Партия</Data>
            </Cell>
            <Cell ss:MergeDown="1" ss:StyleID="s25">
              <Data ss:Type="String">Сумма с НДС, руб. коп</Data>
            </Cell>
            <Cell ss:StyleID="s16"/>
          </Row>
          <Row>
            <Cell ss:Index="2" ss:StyleID="s25">
              <Data ss:Type="String">Группа</Data>
            </Cell>
            <Cell ss:StyleID="s25">
              <Data ss:Type="String">Чертеж</Data>
            </Cell>
            <Cell ss:StyleID="s25">
              <Data ss:Type="String">Наименование</Data>
            </Cell>
            <Cell ss:Index="11" ss:StyleID="s16"/>
          </Row>
          
          <xsl:apply-templates select="WorkItems/WorkItem"/>
          
          <Row>
            <Cell ss:Index="9" ss:StyleID="s26">
              <Data ss:Type="String">Итого</Data>
            </Cell>
            <Cell ss:StyleID="s27" ss:Formula="=SUM(R[-{count(WorkItems/WorkItem)}]C:R[-1]C)">
              <Data ss:Type="Number">7506.9</Data>
            </Cell>
          </Row>
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Layout x:Orientation="Landscape"/>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3" x:Data="Страница  &amp;P из &amp;N"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>
          <Print>
            <ValidPrinterInfo/>
            <PaperSizeIndex>9</PaperSizeIndex>
            <HorizontalResolution>-3</HorizontalResolution>
            <VerticalResolution>-3</VerticalResolution>
          </Print>
          <Selected/>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>2</ActiveRow>
              <ActiveCol>4</ActiveCol>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
    </Workbook>
  </xsl:template>

  <xsl:template match="WorkItems/WorkItem">
    <Row>
      <Cell ss:StyleID="s20">
        <Data ss:Type="Number">
          <xsl:number/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s20">
        <Data ss:Type="String">
          <xsl:value-of select="Drawing/Group/@Name"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s20">
        <Data ss:Type="String">
          <xsl:value-of select="Drawing/@Name"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s20">
        <Data ss:Type="String">
          <xsl:value-of select="Drawing/Detail/@Name"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s20">
        <Data ss:Type="String">
          <xsl:value-of select="Drawing/MaterialByPassport/@Name"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s22">
        <Data ss:Type="String">
          <xsl:value-of select="Drawing/Method/@Name"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s20">
        <Data ss:Type="String">
          <xsl:value-of select="Employee/@FullName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s20">
        <Data ss:Type="Number">
          <xsl:value-of select="@TaskCount"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s21">
        <Data ss:Type="String">
          <xsl:value-of select="@BatchNumber"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s20">
        <Data ss:Type="Number">
          <xsl:value-of select="@Sum"/>
        </Data>
      </Cell>
    </Row>

  </xsl:template>

</xsl:stylesheet>
