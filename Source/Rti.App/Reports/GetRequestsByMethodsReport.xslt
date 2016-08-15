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
          <Alignment ss:Vertical="Bottom" ss:ShrinkToFit="1" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s17">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s23">
          <Alignment ss:Vertical="Bottom"/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s24">
          <Alignment ss:Vertical="Bottom"/>
        </Style>
        <Style ss:ID="s25">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s26">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
      </Styles>
      <Worksheet ss:Name="Лист1">
        <Table x:FullColumns="1" x:FullRows="1" ss:DefaultRowHeight="15">
          <Column ss:AutoFitWidth="0" ss:Width="51.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="54"/>
          <Column ss:Index="4" ss:AutoFitWidth="0" ss:Width="76.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="63"/>
          <Column ss:AutoFitWidth="0" ss:Width="83.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="83.25"/>
          <Row>
            <Cell ss:MergeAcross="5" ss:StyleID="s25">
              <Data ss:Type="String">Отчет (по способу изготовления)</Data>
            </Cell>
          </Row>
          <Row>
            <Cell ss:MergeAcross="5" ss:StyleID="s26">
              <Data ss:Type="String">
                <xsl:value-of select="rti:FormatDateTime(Report/@StartDate, 'dd.MM.yyyy')"/>-<xsl:value-of select="rti:FormatDateTime(Report/@EndDate, 'dd.MM.yyyy')"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:Index="4" ss:Height="45">
            <Cell ss:StyleID="s16">
              <Data ss:Type="String">№ заявки</Data>
            </Cell>
            <Cell ss:StyleID="s16">
              <Data ss:Type="String">Чертеж</Data>
            </Cell>
            <Cell ss:StyleID="s16">
              <Data ss:Type="String">Группа</Data>
            </Cell>
            <Cell ss:StyleID="s16">
              <Data ss:Type="String">Наименование</Data>
            </Cell>
            <Cell ss:StyleID="s16">
              <Data ss:Type="String">Количество по заявке</Data>
            </Cell>
            <Cell ss:StyleID="s16">
              <Data ss:Type="String">Время изготовления, мин.</Data>
            </Cell>
            <Cell ss:StyleID="s16">
              <Data ss:Type="String">Чистое время варки/вырубки мин.</Data>
            </Cell>
          </Row>

          <xsl:apply-templates select="Methods/Method" />


          <Row>
            <Cell ss:MergeAcross="5" ss:StyleID="s24"/>
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
            <Scale>99</Scale>
            <PaperSizeIndex>9</PaperSizeIndex>
            <HorizontalResolution>-3</HorizontalResolution>
            <VerticalResolution>-3</VerticalResolution>
          </Print>
          <Selected/>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>21</ActiveRow>
              <ActiveCol>13</ActiveCol>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
    </Workbook>
  </xsl:template>

  <xsl:template match="Methods/Method">
    <xsl:call-template name = "MethodTemplate"/>
  </xsl:template>

  <xsl:template name="MethodTemplate">
    <Row>
      <Cell ss:MergeAcross="5" ss:StyleID="s23">
        <Data ss:Type="String">
          Способ изготовления: <xsl:value-of select="@MethodName"/>
        </Data>
      </Cell>
    </Row>

    <xsl:apply-templates select="row" />

  </xsl:template>

  <xsl:template match="row">
    <Row>
      <Cell ss:StyleID="s17">
        <Data ss:Type="Number">
          <xsl:value-of select="@RequestNumber"/>
        </Data>
      </Cell>
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
          <xsl:value-of select="@Count"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s17">
        <xsl:choose>
          <xsl:when test="@CuttingTime=''"><Data ss:Type="String">ОШИБКА</Data></xsl:when>
          <xsl:otherwise>
            <Data ss:Type="Number">
              <xsl:value-of select="@WorkTime"/>
            </Data>
          </xsl:otherwise>
        </xsl:choose>
      </Cell>
      <Cell ss:StyleID="s17">
        <xsl:choose>
          <xsl:when test="@CuttingTime=''"><Data ss:Type="String">ОШИБКА</Data></xsl:when>
          <xsl:otherwise>
            <Data ss:Type="Number">
              <xsl:value-of select="@CuttingTime"/>
            </Data>
          </xsl:otherwise>
        </xsl:choose>
      </Cell>
    </Row>
  </xsl:template>

</xsl:stylesheet>
