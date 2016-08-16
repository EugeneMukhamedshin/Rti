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
        <Style ss:ID="m173513856">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s16">
          <Alignment ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="11"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s17">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="8"
           ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s18">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="8"
           ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s19">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="8"
           ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s20">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="8"
           ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s21">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="8"
           ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s22">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="8"
           ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s23">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="8"
           ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s24">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center"/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="8"
           ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s25">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="8"
           ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s26">
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="8"
           ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s27">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="8"
           ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s28">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="12"
           ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s29">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="8"
           ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s30">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Color="#000000"
           ss:Bold="1"/>
        </Style>
        <Style ss:ID="s31">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Color="#000000"
           ss:Bold="1"/>
        </Style>
        <Style ss:ID="s32">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Color="#000000"
           ss:Bold="1"/>
        </Style>
        <Style ss:ID="s33">
          <Alignment ss:Vertical="Bottom"/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="15"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s34">
          <Alignment ss:Vertical="Bottom" ss:Horizontal="Left"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="15"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s35">
          <Alignment ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="15"
           ss:Color="#000000" ss:Bold="1"/>
        </Style>
        <Style ss:ID="s36">
          <Alignment ss:Horizontal="Right" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Color="#000000"
           ss:Bold="1"/>
        </Style>
        <Style ss:ID="s37">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="8"
           ss:Color="#000000"/>
        </Style>
        <Style ss:ID="s38">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders/>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Color="#000000"
           ss:Bold="1"/>
        </Style>
        <Style ss:ID="s39">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Color="#000000"
           ss:Bold="1"/>
        </Style>
        <Style ss:ID="s40">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Color="#000000"
           ss:Bold="1"/>
        </Style>
        <Style ss:ID="s44">
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="2"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Calibri" x:CharSet="204" x:Family="Swiss" ss:Size="8"
           ss:Color="#000000"/>
          <NumberFormat ss:Format="Short Date"/>
        </Style>
      </Styles>
      <Worksheet ss:Name="Лист1">
        <Table x:FullColumns="1" x:FullRows="1" ss:DefaultRowHeight="15">
          <Column ss:AutoFitWidth="0" ss:Width="14.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="73.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="70.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="59.25"/>
          <Column ss:AutoFitWidth="0" ss:Width="45.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="51.75"/>
          <Column ss:AutoFitWidth="0" ss:Width="54"/>
          <Column ss:AutoFitWidth="0" ss:Width="55.5"/>
          <Column ss:AutoFitWidth="0" ss:Width="42"/>
          <Column ss:AutoFitWidth="0" ss:Width="51"/>
          <Row ss:Height="19.5">
            <Cell ss:Index="2" ss:StyleID="s33" ss:MergeAcross="2">
              <Data ss:Type="String">Индивидуальный наряд № </Data>
            </Cell>
            <Cell ss:StyleID="s34">
              <Data ss:Type="Number">
                <xsl:value-of select="WorkItemEmployeePackage/@Id"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s34"/>
            <Cell ss:StyleID="s33">
              <Data ss:Type="String">Дата</Data>
            </Cell>
            <Cell ss:StyleID="s34">
              <Data ss:Type="String">
                <xsl:value-of select="rti:FormatDate(WorkItemEmployeePackage/@Date)"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s34"/>
            <Cell ss:StyleID="s33"/>
          </Row>
          <Row ss:Height="19.5">
            <Cell ss:StyleID="s33"/>
            <Cell ss:StyleID="s33"/>
            <Cell ss:StyleID="s33"/>
            <Cell ss:StyleID="s35"/>
            <Cell ss:StyleID="s35"/>
            <Cell ss:StyleID="s35"/>
            <Cell ss:StyleID="s35"/>
            <Cell ss:StyleID="s35"/>
            <Cell ss:StyleID="s33"/>
            <Cell ss:StyleID="s33"/>
          </Row>
          <Row ss:Height="15.75"/>
          <Row ss:Height="15.75">
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s30">
              <Data ss:Type="String">Исполнитель</Data>
            </Cell>
            <Cell ss:StyleID="s28" ss:MergeAcross="2">
              <Data ss:Type="String">
                <xsl:value-of select="Employee/@FullName"/>
              </Data>
            </Cell>
            <Cell ss:StyleID="s38"/>
            <Cell ss:StyleID="s38"/>
            <Cell ss:StyleID="s38"/>
            <Cell ss:StyleID="s38"/>
          </Row>
          <Row ss:Height="15.75">
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s31">
              <Data ss:Type="String">№ заявки</Data>
            </Cell>
            <Cell ss:StyleID="s29" ss:MergeAcross="2">
              <Data ss:Type="String"></Data>
            </Cell>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s39">
              <Data ss:Type="String">Участок</Data>
            </Cell>
            <Cell ss:MergeAcross="1" ss:StyleID="m173513856">
              <Data ss:Type="String">
                <xsl:value-of select="WorkItemEmployeePackage/@Block"/>
              </Data>
            </Cell>
          </Row>
          <Row ss:Height="15.75">
            <Cell ss:StyleID="s16"/>
            <Cell ss:StyleID="s32">
              <Data ss:Type="String">Дата заявки</Data>
            </Cell>
            <Cell ss:StyleID="s44" ss:MergeAcross="2">
              <Data ss:Type="String"></Data>
            </Cell>
            <Cell ss:StyleID="s37"/>
            <Cell ss:StyleID="s37"/>
            <Cell ss:StyleID="s37"/>
            <Cell ss:StyleID="s37"/>
          </Row>
          <Row ss:Height="15.75">
            <Cell ss:Index="2" ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
            <Cell ss:StyleID="s26"/>
          </Row>
          <Row ss:Height="22.5" ss:StyleID="s20">
            <Cell ss:StyleID="s17">
              <Data ss:Type="String">№</Data>
            </Cell>
            <Cell ss:StyleID="s18">
              <Data ss:Type="String">Номер детали (чертежа)</Data>
            </Cell>
            <Cell ss:StyleID="s18">
              <Data ss:Type="String">Наименование</Data>
            </Cell>
            <Cell ss:StyleID="s18">
              <Data ss:Type="String">Оборудование (пресс)</Data>
            </Cell>
            <Cell ss:StyleID="s18">
              <Data ss:Type="String">Количество (шт)</Data>
            </Cell>
            <Cell ss:StyleID="s18">
              <Data ss:Type="String">Выполнение (шт)</Data>
            </Cell>
            <Cell ss:StyleID="s18">
              <Data ss:Type="String">Марка материала</Data>
            </Cell>
            <Cell ss:StyleID="s18">
              <Data ss:Type="String">Режим</Data>
            </Cell>
            <Cell ss:StyleID="s18">
              <Data ss:Type="String">Температура</Data>
            </Cell>
            <Cell ss:StyleID="s19">
              <Data ss:Type="String">Примечание</Data>
            </Cell>
          </Row>
          <Row ss:Height="12" ss:StyleID="s24">
            <Cell ss:StyleID="s21">
              <Data ss:Type="Number">1</Data>
            </Cell>
            <Cell ss:StyleID="s22">
              <Data ss:Type="Number">2</Data>
            </Cell>
            <Cell ss:StyleID="s22">
              <Data ss:Type="Number">3</Data>
            </Cell>
            <Cell ss:StyleID="s22">
              <Data ss:Type="Number">4</Data>
            </Cell>
            <Cell ss:StyleID="s22">
              <Data ss:Type="Number">5</Data>
            </Cell>
            <Cell ss:StyleID="s22">
              <Data ss:Type="Number">6</Data>
            </Cell>
            <Cell ss:StyleID="s22">
              <Data ss:Type="Number">7</Data>
            </Cell>
            <Cell ss:StyleID="s22">
              <Data ss:Type="Number">8</Data>
            </Cell>
            <Cell ss:StyleID="s22">
              <Data ss:Type="Number">9</Data>
            </Cell>
            <Cell ss:StyleID="s23">
              <Data ss:Type="Number">10</Data>
            </Cell>
          </Row>

          <xsl:apply-templates select="WorkItems/WorkItem"/>

          <Row ss:Height="11.25" ss:StyleID="s26"/>
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Header x:Margin="0.31496062992125984"/>
            <Footer x:Margin="0.31496062992125984"/>
            <PageMargins x:Bottom="0.74803149606299213" x:Left="0.16" x:Right="0.11"
             x:Top="0.74803149606299213"/>
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
              <ActiveRow>15</ActiveRow>
              <ActiveCol>5</ActiveCol>
            </Pane>
          </Panes>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
      <Worksheet ss:Name="Лист2">
        <Table ss:ExpandedColumnCount="1" ss:ExpandedRowCount="1" x:FullColumns="1"
         x:FullRows="1" ss:DefaultRowHeight="15">
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
      <Worksheet ss:Name="Лист3">
        <Table ss:ExpandedColumnCount="1" ss:ExpandedRowCount="1" x:FullColumns="1"
         x:FullRows="1" ss:DefaultRowHeight="15">
        </Table>
        <WorksheetOptions xmlns="urn:schemas-microsoft-com:office:excel">
          <PageSetup>
            <Header x:Margin="0.3"/>
            <Footer x:Margin="0.3"/>
            <PageMargins x:Bottom="0.75" x:Left="0.7" x:Right="0.7" x:Top="0.75"/>
          </PageSetup>
          <ProtectObjects>False</ProtectObjects>
          <ProtectScenarios>False</ProtectScenarios>
        </WorksheetOptions>
      </Worksheet>
    </Workbook>
  </xsl:template>

  <xsl:template match="WorkItems/WorkItem">
    <Row ss:AutoFitHeight="0" ss:Height="16.125" ss:StyleID="s26">
      <Cell ss:StyleID="s25">
        <Data ss:Type="Number">
          <xsl:number/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s25">
        <Data ss:Type="String">
          <xsl:value-of select="Drawing/Group/@Name"/>
          <xsl:value-of select="Drawing/@Name"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s25">
        <Data ss:Type="String">
          <xsl:value-of select="Drawing/Detail/@Name"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s25">
        <Data ss:Type="String">
          <xsl:value-of select="FlowsheetMachine/Machine/@InvNumber"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s25">
        <Data ss:Type="Number">
          <xsl:value-of select="@TaskCount"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s25">
        <Data ss:Type="Number">
          <xsl:value-of select="@DoneCount"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s25">
        <Data ss:Type="String">
          <xsl:value-of select="Drawing/Material/@Name"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s25">
        <Data ss:Type="Number">
          <xsl:value-of select="FlowsheetMachine/@CureTime"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s25">
        <Data ss:Type="Number">
          <xsl:value-of select="FlowsheetMachine/@PlateTemperature"/>
        </Data>
      </Cell>
      <Cell ss:StyleID="s25"/>
    </Row>
  </xsl:template>

</xsl:stylesheet>
