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
        <Style ss:ID="m158195752">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s18">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s19">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders/>
          <NumberFormat ss:Format="Short Date"/>
        </Style>
        <Style ss:ID="s20">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s21">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
        </Style>
        <Style ss:ID="s22">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders/>
        </Style>
        <Style ss:ID="s23">
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="12"/>
        </Style>
        <Style ss:ID="s24">
          <Borders>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="2"/>
          </Borders>
        </Style>
        <Style ss:ID="s25">
          <Borders/>
        </Style>
        <Style ss:ID="s27">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="12"/>
        </Style>
        <Style ss:ID="s28">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s29">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="14"/>
        </Style>
        <Style ss:ID="s36">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s37">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
        </Style>
        <Style ss:ID="s38">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
        </Style>
        <Style ss:ID="s39">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s40">
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
        </Style>
        <Style ss:ID="s41">
          <Alignment ss:Vertical="Bottom"/>
        </Style>
        <Style ss:ID="s42">
          <Alignment ss:Horizontal="Center" ss:Vertical="Center" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s46">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders/>
          <NumberFormat ss:Format="@"/>
        </Style>
        <Style ss:ID="s49">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s50">
          <Alignment ss:Horizontal="Center" ss:Vertical="Bottom"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
        </Style>
        <Style ss:ID="s51">
          <Alignment ss:Horizontal="Left" ss:Vertical="Bottom" ss:WrapText="1"/>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss" ss:Size="8"/>
        </Style>
        <Style ss:ID="s52">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
          <NumberFormat ss:Format="0"/></Style>
        <Style ss:ID="s53">
          <Alignment ss:Vertical="Bottom" ss:WrapText="1"/>
          <Borders>
            <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
            <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
          </Borders>
          <Font ss:FontName="Arial" x:CharSet="204" x:Family="Swiss"/>
          <NumberFormat ss:Format="Standard"/>
        </Style>
      </Styles>

      <xsl:apply-templates select="set[@name='ShipmentItems']/ShipmentItem"/>

    </Workbook>
  </xsl:template>

  <xsl:template match="set[@name='ShipmentItems']/ShipmentItem">
    <Worksheet ss:Name="{@FullDetailName}">
      <Names>
        <NamedRange ss:Name="Print_Area" ss:RefersTo="=Лист1!R1C1:R25C13"/>
      </Names>
      <Table x:FullColumns="1" x:FullRows="1" ss:DefaultRowHeight="15">
        <Column ss:Index="4" ss:AutoFitWidth="0" ss:Width="65"/>
        <Column ss:AutoFitWidth="0" ss:Width="65"/>
        <Column ss:AutoFitWidth="0" ss:Width="30"/>
        <Column ss:AutoFitWidth="0" ss:Width="40"/>
        <Column ss:Index="9" ss:AutoFitWidth="0" ss:Width="65"/>
        <Row>
          <Cell ss:MergeAcross="2" ss:StyleID="s46"/>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
        </Row>
        <Row ss:Height="16.5">
          <Cell ss:Index="7" ss:StyleID="s23">
            <Data ss:Type="String">
              <xsl:value-of select="Shipment/Request/Manufacturer/@Name"/>
            </Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
        </Row>
        <Row>
          <Cell ss:Index="7" ss:StyleID="s24">
            <Data ss:Type="String">наименование предприятия-изготовителя</Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
        </Row>
        <Row>
          <Cell ss:Index="7" ss:StyleID="s25"/>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
        </Row>
        <Row ss:Height="18">
          <Cell ss:MergeAcross="10" ss:StyleID="s29">
            <Data ss:Type="String">
              ПАСПОРТ № <xsl:value-of select="rti:FormatDate(Shipment/@Date, 'ddMM\/yy')"/>-<xsl:value-of select="Shipment/@SortOrder"/>/<xsl:value-of select="@SortOrder"/>
            </Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
        </Row>
        <Row ss:Height="36">
          <Cell ss:StyleID="s27">
            <Data ss:Type="String">Покупатель: </Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell ss:StyleID="s51" ss:MergeAcross="8">
            <Data ss:Type="String">
              <xsl:value-of select="Shipment/Payer/@FullName"/>
            </Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
        </Row>
        <Row ss:Height="18">
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
        </Row>
        <Row>
          <Cell ss:Index="2">
            <Data ss:Type="String">1. Свидетельство о приемке</Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
        </Row>
        <Row>
          <Cell ss:MergeAcross="2" ss:MergeDown="2" ss:StyleID="s42">
            <Data
    ss:Type="String">Наименование РТД или номер детали по чертежу</Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
          <Cell ss:MergeDown="2" ss:StyleID="s49">
            <Data ss:Type="String">Дата изготовления (год, м-ц)</Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
          <Cell ss:MergeDown="2" ss:StyleID="s42">
            <Data ss:Type="String">Дата отгрузки</Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
          <Cell ss:MergeAcross="1" ss:StyleID="s50">
            <Data ss:Type="String">Количество</Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
          <Cell ss:MergeDown="2" ss:StyleID="s42">
            <Data ss:Type="String">Номер анализа, дата</Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
          <Cell ss:MergeDown="2" ss:StyleID="s42">
            <Data ss:Type="String">Марка материала</Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
          <Cell ss:MergeDown="2" ss:StyleID="s42">
            <Data ss:Type="String">Вид упаковки</Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
          <Cell ss:MergeDown="2" ss:StyleID="s42">
            <Data ss:Type="String">К-во мест в партии</Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
        </Row>
        <Row>
          <Cell ss:Index="6" ss:MergeDown="1" ss:StyleID="s42">
            <Data ss:Type="String">шт</Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
          <Cell ss:MergeDown="1" ss:StyleID="s42">
            <Data ss:Type="String">кг</Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
        </Row>

        <Row ss:Index="12">
          <Cell ss:MergeAcross="2" ss:StyleID="m158195752">
            <Data ss:Type="String">
              <xsl:value-of select="@FullDetailName"/>
            </Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
          <Cell ss:StyleID="s36">
            <Data ss:Type="String">
              <xsl:value-of select="rti:FormatDateTime(@DoneDate, 'dd.MM.yyyy')"/>
            </Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
          <Cell ss:StyleID="s36">
            <Data ss:Type="String">
              <xsl:value-of select="rti:FormatDateTime(Shipment/@Date, 'dd.MM.yyyy')"/>
            </Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
          <Cell ss:StyleID="s52">
            <Data ss:Type="Number">
              <xsl:value-of select="@Count"/>
            </Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
          <Cell ss:StyleID="s53">
            <Data ss:Type="Number">
              <xsl:value-of select="@NetMass"/>
            </Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
          <Cell ss:StyleID="s37">
            <Data ss:Type="String"> </Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
          <Cell ss:StyleID="s38">
            <Data ss:Type="String">
              <xsl:value-of select="RequestDetail/Drawing/Material/@Name"/>
            </Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
          <Cell ss:StyleID="s37">
            <Data ss:Type="String">мешок</Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
        </Row>

        <Row>
          <Cell>
            <Data ss:Type="String">РТД приняты ОТК представителем заказчика (при наличии приемки)</Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
          <Cell ss:Index="9" ss:StyleID="s40"/>
        </Row>
        <Row>
          <Cell>
            <Data ss:Type="String"> </Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
          <Cell>
            <Data ss:Type="String">2. Результаты испытаний</Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
        </Row>
        <Row>
          <Cell>
            <Data ss:Type="String">Внешний вид, размеры РТД, физико-механические показатели резины и РТД соответствуют </Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
        </Row>
        <Row>
          <Cell ss:StyleID="s40">
            <Data ss:Type="String">
              требованиям чертежа <xsl:value-of select="RequestDetail/Drawing/@Name"/> и ТУ <xsl:value-of select="RequestDetail/Drawing/Material/@TechConditions"/>
            </Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
        </Row>
        <Row>
          <Cell ss:Index="2">
            <Data ss:Type="String">3. Гарантии поставщика</Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
        </Row>
        <Row>
          <Cell ss:StyleID="s40">
            <Data ss:Type="String">Срок гарантии, гарантийная наработка, условия транспортировки и хранения в соответствии с ТУ  </Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
        </Row>
        <Row>
          <Cell>
            <Data ss:Type="String"> </Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
        </Row>
        <Row>
          <Cell>
            <Data ss:Type="String">НАЧАЛЬНИК ОТК____________Наумова Е.В.</Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
          <Cell ss:Index="5" ss:StyleID="s41"/>
          <Cell ss:StyleID="s41">
            <Data ss:Type="String">НАЧАЛЬНИК ЦЕХА____________________Холодников М.Ю.</Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
        </Row>
        <Row ss:Index="22">
          <Cell ss:StyleID="s40">
            <Data ss:Type="String">ПРЕДСТАВИТЕЛЬ ЗАКАЗЧИКА__________________</Data>
          <NamedCell ss:Name="Print_Area"/></Cell>
        </Row>
        <Row ss:Index="24">
          <Cell ss:MergeAcross="2" ss:StyleID="s46"/>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
          <Cell><NamedCell ss:Name="Print_Area"/></Cell>
        </Row>
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
          <Scale>82</Scale>
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
      </WorksheetOptions>
    </Worksheet>
  </xsl:template>

</xsl:stylesheet>
