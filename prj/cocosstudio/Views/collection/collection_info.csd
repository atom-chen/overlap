<GameFile>
  <PropertyGroup Name="collection_info" Type="Layer" ID="e976a202-176b-42f0-9646-0f63705fe5e9" Version="3.10.0.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="15" Speed="1.0000" ActivedAnimationName="enter">
        <Timeline ActionTag="823573896" Property="Position">
          <PointFrame FrameIndex="0" X="384.9750" Y="656.9950">
            <EasingData Type="27" />
          </PointFrame>
          <PointFrame FrameIndex="15" X="384.9750" Y="656.9950">
            <EasingData Type="0" />
          </PointFrame>
        </Timeline>
        <Timeline ActionTag="823573896" Property="Scale">
          <ScaleFrame FrameIndex="0" X="0.2000" Y="0.2000">
            <EasingData Type="27" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="15" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="823573896" Property="RotationSkew">
          <ScaleFrame FrameIndex="0" X="0.0000" Y="0.0000">
            <EasingData Type="27" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="15" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
      </Animation>
      <AnimationList>
        <AnimationInfo Name="enter" StartIndex="0" EndIndex="20">
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
          <AbstractNodeData Name="Panel_1_0" ActionTag="823573896" Tag="251" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-115.5250" RightMargin="-135.4750" TopMargin="10.0050" BottomMargin="-10.0050" TouchEnable="True" ClipAble="False" BackColorAlpha="0" ComboBoxIndex="1" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
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
              <AbstractNodeData Name="Panel_2" ActionTag="-100329808" Tag="7" IconVisible="False" LeftMargin="359.4297" RightMargin="341.5703" TopMargin="366.0331" BottomMargin="667.9669" TouchEnable="True" ClipAble="False" BackColorAlpha="0" ComboBoxIndex="1" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                <Size X="300.0000" Y="300.0000" />
                <Children>
                  <AbstractNodeData Name="Text_1" ActionTag="-554410798" Tag="8" IconVisible="False" LeftMargin="71.7781" RightMargin="98.2219" TopMargin="61.5440" BottomMargin="196.4560" FontSize="36" LabelText="totaato" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                    <Size X="130.0000" Y="42.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="136.7781" Y="217.4560" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="62" G="62" B="62" />
                    <PrePosition X="0.4559" Y="0.7249" />
                    <PreSize X="0.4333" Y="0.1400" />
                    <FontResource Type="Normal" Path="Resource/fonts/OverlapExt.ttf" Plist="" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="110" G="110" B="110" />
                  </AbstractNodeData>
                  <AbstractNodeData Name="Sprite_1" ActionTag="851501348" Tag="6" IconVisible="False" LeftMargin="68.9934" RightMargin="70.0066" TopMargin="134.9752" BottomMargin="-7.9752" ctype="SpriteObjectData">
                    <Size X="161.0000" Y="173.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="149.4934" Y="78.5248" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.4983" Y="0.2617" />
                    <PreSize X="0.5367" Y="0.5767" />
                    <FileData Type="PlistSubImage" Path="collection-detail-1.png" Plist="Resource/atlas/ui-home.plist" />
                    <BlendFunc Src="1" Dst="771" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint />
                <Position X="359.4297" Y="667.9669" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.3591" Y="0.5007" />
                <PreSize X="0.2997" Y="0.2249" />
                <SingleColor A="255" R="150" G="200" B="255" />
                <FirstColor A="255" R="150" G="200" B="255" />
                <EndColor A="255" R="255" G="255" B="255" />
                <ColorVector ScaleY="1.0000" />
              </AbstractNodeData>
              <AbstractNodeData Name="Text_2" ActionTag="332603977" Tag="10" IconVisible="False" LeftMargin="300.6873" RightMargin="297.7107" TopMargin="698.4897" BottomMargin="572.3876" IsCustomSize="True" FontSize="20" LabelText="it seems someone left behind,not clean,it smells strange." HorizontalAlignmentType="HT_Center" VerticalAlignmentType="VT_Center" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                <Size X="402.6020" Y="63.1227" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="501.9883" Y="603.9490" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="62" G="62" B="62" />
                <PrePosition X="0.5015" Y="0.4527" />
                <PreSize X="0.4022" Y="0.0473" />
                <FontResource Type="Normal" Path="Resource/fonts/OverlapExt.ttf" Plist="" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="384.9750" Y="656.9950" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5133" Y="0.4925" />
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