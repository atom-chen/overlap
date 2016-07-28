<GameFile>
  <PropertyGroup Name="collection_info" Type="Layer" ID="e976a202-176b-42f0-9646-0f63705fe5e9" Version="3.10.0.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="37" Speed="1.0000" ActivedAnimationName="enter">
        <Timeline ActionTag="823573896" Property="Position">
          <PointFrame FrameIndex="0" X="384.9750" Y="656.9950">
            <EasingData Type="27" />
          </PointFrame>
          <PointFrame FrameIndex="30" X="384.9750" Y="656.9950">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="37" X="384.9750" Y="658.6140">
            <EasingData Type="0" />
          </PointFrame>
        </Timeline>
        <Timeline ActionTag="823573896" Property="Scale">
          <ScaleFrame FrameIndex="0" X="0.2000" Y="0.2000">
            <EasingData Type="27" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="30" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="823573896" Property="RotationSkew">
          <ScaleFrame FrameIndex="0" X="0.0000" Y="0.0000">
            <EasingData Type="27" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="30" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
      </Animation>
      <AnimationList>
        <AnimationInfo Name="enter" StartIndex="0" EndIndex="40">
          <RenderColor A="255" R="107" G="142" B="35" />
        </AnimationInfo>
      </AnimationList>
      <ObjectData Name="Layer" Tag="245" ctype="GameLayerObjectData">
        <Size X="750.0000" Y="1334.0000" />
        <Children>
          <AbstractNodeData Name="Panel_1" ActionTag="-1599898357" Tag="249" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-125.5000" RightMargin="-125.5000" TouchEnable="True" ClipAble="False" BackColorAlpha="0" ComboBoxIndex="1" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
            <Size X="1001.0000" Y="1334.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="375.0000" Y="667.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.5000" />
            <PreSize X="1.3347" Y="1.0000" />
            <SingleColor A="255" R="150" G="200" B="255" />
            <FirstColor A="255" R="150" G="200" B="255" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </AbstractNodeData>
          <AbstractNodeData Name="Panel_1_0" ActionTag="823573896" Tag="251" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-115.5250" RightMargin="-135.4750" TopMargin="8.3860" BottomMargin="-8.3860" TouchEnable="True" ClipAble="False" BackColorAlpha="0" ComboBoxIndex="1" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
            <Size X="1001.0000" Y="1334.0000" />
            <Children>
              <AbstractNodeData Name="Image_1" ActionTag="-1621875686" Tag="248" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="168.5000" RightMargin="168.5000" TopMargin="381.5000" BottomMargin="381.5000" Scale9Enable="True" LeftEage="219" RightEage="219" TopEage="129" BottomEage="129" Scale9OriginX="219" Scale9OriginY="129" Scale9Width="226" Scale9Height="135" ctype="ImageViewObjectData">
                <Size X="664.0000" Y="571.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="500.5000" Y="667.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5000" Y="0.5000" />
                <PreSize X="0.6633" Y="0.4280" />
                <FileData Type="PlistSubImage" Path="common-dialog.png" Plist="Resource/atlas/ui-common.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="btn_ok" ActionTag="-395905453" CallBackType="Click" CallBackName="onClick" Tag="250" IconVisible="False" LeftMargin="426.5630" RightMargin="440.4370" TopMargin="806.8515" BottomMargin="440.1485" TouchEnable="True" FontSize="48" ButtonText="OK" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="104" Scale9Height="65" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                <Size X="134.0000" Y="87.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="493.5630" Y="483.6485" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.4931" Y="0.3626" />
                <PreSize X="0.1339" Y="0.0652" />
                <FontResource Type="Normal" Path="Resource/fonts/OverlapExt.ttf" Plist="" />
                <TextColor A="255" R="242" G="251" B="254" />
                <DisabledFileData Type="PlistSubImage" Path="btn-146-92-h.png" Plist="Resource/atlas/ui-common.plist" />
                <PressedFileData Type="PlistSubImage" Path="btn-146-92-h.png" Plist="Resource/atlas/ui-common.plist" />
                <NormalFileData Type="PlistSubImage" Path="btn-134-87-n.png" Plist="Resource/atlas/ui-common.plist" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
              <AbstractNodeData Name="Sprite_1" ActionTag="851501348" Tag="6" IconVisible="False" LeftMargin="422.8736" RightMargin="417.1264" TopMargin="503.6037" BottomMargin="657.3963" ctype="SpriteObjectData">
                <Size X="161.0000" Y="173.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="503.3736" Y="743.8963" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5029" Y="0.5576" />
                <PreSize X="0.1608" Y="0.1297" />
                <FileData Type="PlistSubImage" Path="collection-detail-1.png" Plist="Resource/atlas/ui-home.plist" />
                <BlendFunc Src="1" Dst="771" />
              </AbstractNodeData>
              <AbstractNodeData Name="Panel_11" ActionTag="1688741063" Tag="59" IconVisible="False" LeftMargin="250.7536" RightMargin="250.2465" TopMargin="665.0834" BottomMargin="518.9166" ClipAble="False" BackColorAlpha="0" ComboBoxIndex="1" ColorAngle="90.0000" ctype="PanelObjectData">
                <Size X="500.0000" Y="150.0000" />
                <Children>
                  <AbstractNodeData Name="LO_info_1" ActionTag="1716602741" Tag="60" IconVisible="False" LeftMargin="-38.3254" RightMargin="18.3254" TopMargin="6.0178" BottomMargin="-6.0178" IsCustomSize="True" FontSize="36" LabelText="Text Label" HorizontalAlignmentType="HT_Center" VerticalAlignmentType="VT_Center" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                    <Size X="520.0000" Y="150.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="221.6746" Y="68.9822" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="118" G="115" B="113" />
                    <PrePosition X="0.4433" Y="0.4599" />
                    <PreSize X="1.0400" Y="1.0000" />
                    <FontResource Type="Default" Path="" Plist="" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="110" G="110" B="110" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="LO_info_2" ActionTag="301405329" Tag="116" IconVisible="False" LeftMargin="-30.1079" RightMargin="10.1079" TopMargin="12.4520" BottomMargin="-12.4520" IsCustomSize="True" FontSize="36" LabelText="Text Label" HorizontalAlignmentType="HT_Center" VerticalAlignmentType="VT_Center" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                    <Size X="520.0000" Y="150.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="229.8921" Y="62.5480" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="118" G="115" B="113" />
                    <PrePosition X="0.4598" Y="0.4170" />
                    <PreSize X="1.0400" Y="1.0000" />
                    <FontResource Type="Normal" Path="Resource/fonts/Overlap.ttf" Plist="" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="110" G="110" B="110" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint />
                <Position X="250.7536" Y="518.9166" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.2505" Y="0.3890" />
                <PreSize X="0.4995" Y="0.1124" />
                <SingleColor A="255" R="150" G="200" B="255" />
                <FirstColor A="255" R="150" G="200" B="255" />
                <EndColor A="255" R="255" G="255" B="255" />
                <ColorVector ScaleY="1.0000" />
              </AbstractNodeData>
              <AbstractNodeData Name="Panel_11_0" ActionTag="1227123518" Tag="117" IconVisible="False" LeftMargin="262.5366" RightMargin="238.4634" TopMargin="391.6184" BottomMargin="792.3816" TouchEnable="True" ClipAble="False" BackColorAlpha="0" ComboBoxIndex="1" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                <Size X="500.0000" Y="150.0000" />
                <Children>
                  <AbstractNodeData Name="LO_Name_1" ActionTag="-1326591156" Tag="118" IconVisible="False" LeftMargin="139.1746" RightMargin="195.8254" TopMargin="60.0178" BottomMargin="47.9822" FontSize="36" LabelText="Text Label" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                    <Size X="165.0000" Y="42.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="221.6746" Y="68.9822" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="26" G="26" B="26" />
                    <PrePosition X="0.4433" Y="0.4599" />
                    <PreSize X="0.3300" Y="0.2800" />
                    <FontResource Type="Default" Path="" Plist="" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="110" G="110" B="110" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="LO_Name_2" ActionTag="-313370779" Tag="119" IconVisible="False" LeftMargin="144.8921" RightMargin="185.1079" TopMargin="66.4520" BottomMargin="41.5480" FontSize="36" LabelText="Text Label" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                    <Size X="170.0000" Y="42.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="229.8921" Y="62.5480" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="26" G="26" B="26" />
                    <PrePosition X="0.4598" Y="0.4170" />
                    <PreSize X="0.3400" Y="0.2800" />
                    <FontResource Type="Normal" Path="Resource/fonts/OverlapExt.ttf" Plist="" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="110" G="110" B="110" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint />
                <Position X="262.5366" Y="792.3816" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.2623" Y="0.5940" />
                <PreSize X="0.4995" Y="0.1124" />
                <SingleColor A="255" R="150" G="200" B="255" />
                <FirstColor A="255" R="150" G="200" B="255" />
                <EndColor A="255" R="255" G="255" B="255" />
                <ColorVector ScaleY="1.0000" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="384.9750" Y="658.6140" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5133" Y="0.4937" />
            <PreSize X="1.3347" Y="1.0000" />
            <SingleColor A="255" R="150" G="200" B="255" />
            <FirstColor A="255" R="150" G="200" B="255" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </AbstractNodeData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameFile>