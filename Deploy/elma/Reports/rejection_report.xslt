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
        <Style ss:ID="s69">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s70">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="Short Date"/>
        </Style>
        <Style ss:ID="s71">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="Standard"/>
        </Style>
        <Style ss:ID="s72">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <NumberFormat ss:Format="Fixed"/>
        </Style>
        <Style ss:ID="s82">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
          <Interior ss:Color="#D9D9D9" ss:Pattern="Solid"/>
        </Style>
        <Style ss:ID="s85">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="14"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
      </Styles>
      <Worksheet ss:Name="Лист1">
        <Names>
          <NamedRange ss:Name="Print_Area" ss:RefersTo="=Лист1!R1C1:R{10+count(RequestDetails/RequestDetail)}C10"/>
        </Names>
        <Table ss:ExpandedColumnCount="10" x:FullColumns="1"
         x:FullRows="1" ss:DefaultRowHeight="15">
          <Column ss:AutoFitWidth="0" ss:Width="171"/>
          <Column ss:Index="3" ss:Width="75"/>
          <Column ss:Width="70.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="87"/>
          <Column ss:AutoFitWidth="0" ss:Width="49.5"/>
          <Column ss:Width="89.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="90"/>
          <Column ss:AutoFitWidth="0" ss:Width="90"/>
          <Column ss:Width="84.75"/>
          <Row ss:Height="18.75">
            <Cell ss:MergeAcross="9" ss:StyleID="s85">
              <Data ss:Type="String">Реестр брака</Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>
          <Row ss:Index="3" ss:Height="30">
            <Cell ss:StyleID="s82">
              <Data ss:Type="String">Исполнитель</Data>

              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s82">
              <Data ss:Type="String">Заявка</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s82">
              <Data ss:Type="String">Дата заявки</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s82">
              <Data ss:Type="String">Чертеж</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s82">
              <Data ss:Type="String">Деталь</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s82">
              <Data ss:Type="String">Кол-во брака</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s82">
              <Data ss:Type="String">Материал</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s82">
              <Data ss:Type="String">Убыток по материалу, кг</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s82">
              <Data ss:Type="String">Убыток по материалу, руб</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
            <Cell ss:StyleID="s82">
              <Data ss:Type="String">Прямые затраты</Data>
              <NamedCell ss:Name="Print_Area"/>
            </Cell>
          </Row>

          <xsl:apply-templates select="set[@name='Rows']/row" />

        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3" x:Data="Страница  &amp;P из &amp;N"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>

          <Unsynced/>
          <Print>
            <ValidPrinterInfo/>
            <PaperSizeIndex>9</PaperSizeIndex>
            <Scale>53</Scale>
            <HorizontalResolution>600</HorizontalResolution>
            <VerticalResolution>600</VerticalResolution>
          </Print>
          <ShowPageBreakZoom/>
          <Selected/>
          <Panes>
            <Pane>
              <Number>3</Number>
              <ActiveRow>9</ActiveRow>
              <ActiveCol>2</ActiveCol>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>

        </WorksheetOptions>      </Worksheet>
    </Workbook>
  </xsl:template>

  <xsl:template match="set[@name='Rows']/row">
    <xsl:call-template name = "Row"/>
  </xsl:template>

  <xsl:template name="Row">
    <Row>
      <Cell ss:StyleID="s69">

        <Data ss:Type="String">
          <xsl:value-of select="@EmployeeName"/>
        </Data>
        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:StyleID="s69">
        <Data ss:Type="Number">
          <xsl:value-of select="@RequestNumber"/>
        </Data>

        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:StyleID="s70">
        <Data ss:Type="String">
          <xsl:value-of select="rti:FormatDateTime(@RequestRegDate, 'dd.MM.yyyy')"/>
        </Data>

        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:StyleID="s69">
        <Data ss:Type="String">
          <xsl:value-of select="@DrawingName"/>
        </Data>

        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:StyleID="s69">
        <Data ss:Type="String">
          <xsl:value-of select="@DetailName"/>
        </Data>

        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:StyleID="s69">
        <Data ss:Type="Number">
          <xsl:value-of select="@RejectedCount"/>
        </Data>

        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:StyleID="s69">
        <Data ss:Type="String">
          <xsl:value-of select="@MaterialName"/>
        </Data>

        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:StyleID="s71">
        <Data ss:Type="Number">
          <xsl:value-of select="@RejectedMass"/>
        </Data>

        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:StyleID="s72">
        <Data ss:Type="Number">
          <xsl:value-of select="@RejectedPrice"/>
        </Data>

        <NamedCell ss:Name="Print_Area"/>
      </Cell>
      <Cell ss:StyleID="s72">
        <Data ss:Type="Number">
          <xsl:value-of select="@Expences"/>
        </Data>
        <NamedCell ss:Name="Print_Area"/>
      </Cell>
    </Row>
  </xsl:template>

</xsl:stylesheet>
