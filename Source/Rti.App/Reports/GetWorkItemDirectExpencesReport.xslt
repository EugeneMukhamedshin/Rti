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
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s18">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s19">
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
        <Style ss:ID="s22">
          <Borders/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s23">
          <Borders/>
        </Style>
        <Style ss:ID="s24">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s25">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s26">
          <Borders>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s27">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
          <Interior/>
        </Style>
        <Style ss:ID="s28">
          <Alignment ss:Vertical="Bottom"/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s29">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
      </Styles>
      <Worksheet ss:Name="Лист1">
        <Table x:FullColumns="1" x:FullRows="1" ss:DefaultRowHeight="15">
          <Column ss:AutoFitWidth="0" ss:Width="84.75"/>
          <Column ss:Index="3" ss:AutoFitWidth="0" ss:Width="80.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="66.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="64.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="52.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="59.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="84"/>
          <Column ss:AutoFitWidth="0" ss:Width="84.75"/>
          <Row>
            <Cell ss:MergeAcross="8" ss:StyleID="s29">
              <Data ss:Type="String">
                Учет прямых затрат на наряд <xsl:value-of select="rti:FormatDate(Report/@StartDate, 'dd.MM.yyyy')"/> - <xsl:value-of select="rti:FormatDate(Report/@EndDate, 'dd.MM.yyyy')"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:Index="3" ss:Height="45">
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Чертеж</Data>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Группа</Data>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Наименование</Data>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Выполнено деталей, шт.</Data>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Сырье и материалы, руб.</Data>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Основная зарплата, руб.</Data>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Транспортные, руб.</Data>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Электроэнергия для формовых, руб.</Data>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Электроэнергия прочая, руб.</Data>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Итого, руб.</Data>
            </Cell>
          </Row>

          <xsl:apply-templates select="WorkItemPackages/WorkItemPackage"/>

        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Layout x:Orientation="Landscape"/>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3"/>
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
              <ActiveRow>13</ActiveRow>
              <ActiveCol>9</ActiveCol>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
    </Workbook>
  </xsl:template>

  <xsl:template match="WorkItemPackages/WorkItemPackage">
    <Row>
      <Cell ss:StyleID="s24"/>
      <Cell ss:StyleID="s24"/>
      <Cell ss:StyleID="s24"/>
      <Cell ss:StyleID="s24"/>
      <Cell ss:StyleID="s24"/>
      <Cell ss:StyleID="s24"/>
      <Cell ss:StyleID="s24"/>
      <Cell ss:StyleID="s24"/>
      <Cell ss:StyleID="s24"/>
      <Cell ss:StyleID="s16"/>
    </Row>
    <Row>
      <Cell ss:MergeAcross="8" ss:StyleID="s28">
        <Data ss:Type="String">Наряд № от <xsl:value-of select="rti:FormatDateTime(@WorkDate, 'dd.MM.yyyy')"/>
      </Data>
      </Cell>
    </Row>

    <xsl:apply-templates select="row"/>

    <Row ss:Height="15.75">
      <Cell ss:StyleID="s18">
        <Data ss:Type="String">Итого по наряду</Data>
      </Cell>
      <Cell ss:StyleID="s17"/>
      <Cell ss:StyleID="s17"/>
      <Cell ss:StyleID="s17" ss:Formula="=SUM(R[-{count(row)}]C:R[-1]C)">
        <Data ss:Type="Number">100</Data>
      </Cell>
      <Cell ss:StyleID="s17" ss:Formula="=SUM(R[-{count(row)}]C:R[-1]C)">
        <Data ss:Type="Number">56</Data>
      </Cell>
      <Cell ss:StyleID="s17" ss:Formula="=SUM(R[-{count(row)}]C:R[-1]C)">
        <Data ss:Type="Number">66</Data>
      </Cell>
      <Cell ss:StyleID="s17" ss:Formula="=SUM(R[-{count(row)}]C:R[-1]C)">
        <Data ss:Type="Number">57</Data>
      </Cell>
      <Cell ss:StyleID="s17" ss:Formula="=SUM(R[-{count(row)}]C:R[-1]C)">
        <Data ss:Type="Number">22</Data>
      </Cell>
      <Cell ss:StyleID="s25" ss:Formula="=SUM(R[-{count(row)}]C:R[-1]C)">
        <Data ss:Type="Number">91</Data>
      </Cell>
      <Cell ss:StyleID="s27" ss:Formula="=SUM(RC[-5]:RC[-1])">
        <Data ss:Type="Number">292</Data>
      </Cell>
    </Row>

  </xsl:template>

  <xsl:template match="row">
    <Row>
      <Cell ss:StyleID="s17">
        <Data ss:Type="String">
          <xsl:value-of select="@DrawingName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="String">
          <xsl:value-of select="@GroupName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="String">
          <xsl:value-of select="@DetailName"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="Number">
          <xsl:value-of select="@DoneCount"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="Number">
          <xsl:value-of select="@MaterialCost"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="Number">
          <xsl:value-of select="@SalaryCost"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="Number">
          <xsl:value-of select="@TransportCost"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="Number">
          <xsl:value-of select="@PowerForFormedCost"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <Data ss:Type="Number">
          <xsl:value-of select="@OtherPowerCost"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s17" ss:Formula="=SUM(RC[-5]:RC[-1])">
        <Data ss:Type="Number">68</Data>
      </Cell>
    </Row>
  </xsl:template>

</xsl:stylesheet>
