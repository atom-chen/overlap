<GameFile>
  <PropertyGroup Name="common_dialog" Type="Layer" ID="2dd85763-84fb-4efa-aa96-1cc0d9c74841" Version="3.10.0.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="80" Speed="1.0000" ActivedAnimationName="exit">
        <Timeline ActionTag="-1277763822" Property="Position">
          <PointFrame FrameIndex="0" X="375.0000" Y="667.0000">
            <EasingData Type="29" />
          </PointFrame>
          <PointFrame FrameIndex="15" X="375.0000" Y="667.0000">
            <EasingData Type="27" />
          </PointFrame>
          <PointFrame FrameIndex="70" X="375.0000" Y="667.0000">
            <EasingData Type="6" />
          </PointFrame>
          <PointFrame FrameIndex="80" X="375.0000" Y="667.0000">
            <EasingData Type="0" />
          </PointFrame>
        </Timeline>
        <Timeline ActionTag="-1277763822" Property="Scale">
          <ScaleFrame FrameIndex="0" X="0.0010" Y="0.0010">
            <EasingData Type="29" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="15" X="1.0000" Y="1.0000">
            <EasingData Type="27" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="70" X="1.0000" Y="1.0000">
            <EasingData Type="6" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="80" X="0.0010" Y="0.0010">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="-1277763822" Property="RotationSkew">
          <ScaleFrame FrameIndex="0" X="0.0000" Y="0.0000">
            <EasingData Type="29" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="15" X="0.0000" Y="0.0000">
            <EasingData Type="27" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="70" X="0.0000" Y="0.0000">
            <EasingData Type="6" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="80" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="-1277763822" Property="FrameEvent">
          <EventFrame FrameIndex="80" Tween="False" Value="exitEnd" />
        </Timeline>
      </Animation>
      <AnimationList>
        <AnimationInfo Name="enter" StartIndex="0" EndIndex="60">
          <RenderColor A="255" R="85" G="107" B="47" />
        </AnimationInfo>
        <AnimationInfo Name="exit" StartIndex="70" EndIndex="80">
          <RenderColor A="255" R="147" G="112" B="219" />
        </AnimationInfo>
      </AnimationList>
      <ObjectData Name="Layer" Tag="201" ctype="GameLayerObjectData">
        <Size X="750.0000" Y="1334.0000" />
        <Children>
          <AbstractNodeData Name="Panel_1" ActionTag="-1071235750" Tag="202" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="-125.5000" RightMargin="-125.5000" TouchEnable="True" ClipAble="False" BackColorAlpha="153" ComboBoxIndex="1" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
            <Size X="1001.0000" Y="1334.0000" />
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="375.0000" Y="667.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.5000" />
            <PreSize X="1.3347" Y="1.0000" />
            <SingleColor A="255" R="26" G="26" B="26" />
            <FirstColor A="255" R="150" G="200" B="255" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </AbstractNodeData>
          <AbstractNodeData Name="Sprite_1" ActionTag="-1277763822" Tag="203" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="43.0000" RightMargin="43.0000" TopMargin="470.5000" BottomMargin="470.5000" ctype="SpriteObjectData">
            <Size X="664.0000" Y="393.0000" />
            <Children>
              <AbstractNodeData Name="content" ActionTag="40075346" Tag="211" IconVisible="False" LeftMargin="61.1223" RightMargin="82.8777" TopMargin="33.5540" BottomMargin="159.4460" ClipAble="False" BackColorAlpha="0" ComboBoxIndex="1" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                <Size X="520.0000" Y="200.0000" />
                <Children>
                  <AbstractNodeData Name="Text_3" ActionTag="1448776028" VisibleForFrame="False" Tag="165" IconVisible="False" LeftMargin="0.4584" RightMargin="-0.4584" TopMargin="-0.9914" BottomMargin="0.9914" IsCustomSize="True" FontSize="36" LabelText="1212" HorizontalAlignmentType="HT_Center" VerticalAlignmentType="VT_Center" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                    <Size X="520.0000" Y="200.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="260.4584" Y="100.9914" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="15" G="22" B="22" />
                    <PrePosition X="0.5009" Y="0.5050" />
                    <PreSize X="1.0000" Y="1.0000" />
                    <OutlineColor A="255" R="255" G="0" B="0" />
                    <ShadowColor A="255" R="110" G="110" B="110" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint />
                <Position X="61.1223" Y="159.4460" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.0921" Y="0.4057" />
                <PreSize X="0.7831" Y="0.5089" />
                <SingleColor A="255" R="150" G="200" B="255" />
                <FirstColor A="255" R="150" G="200" B="255" />
                <EndColor A="255" R="255" G="255" B="255" />
                <ColorVector ScaleY="1.0000" />
              </AbstractNodeData>
              <AbstractNodeData Name="btn_close" ActionTag="513523674" CallBackType="Click" CallBackName="onClick" Tag="161" IconVisible="False" HorizontalEdge="LeftEdge" LeftMargin="249.5570" RightMargin="268.4430" TopMargin="261.8956" BottomMargin="39.1044" TouchEnable="True" FontSize="48" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="116" Scale9Height="70" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                <Size X="146.0000" Y="92.0000" />
                <Children>
                  <AbstractNodeData Name="Panel_2" ActionTag="487971785" Tag="162" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="73.0000" RightMargin="73.0000" TopMargin="46.0000" BottomMargin="46.0000" ClipAble="False" BackColorAlpha="0" ComboBoxIndex="1" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                    <Size X="0.0000" Y="0.0000" />
                    <Children>
                      <AbstractNodeData Name="LO_OK_1" Visible="False" ActionTag="1485735692" Tag="163" IconVisible="False" LeftMargin="-36.0000" RightMargin="-36.0000" TopMargin="-21.0000" BottomMargin="-21.0000" FontSize="36" LabelText="重来" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                        <Size X="72.0000" Y="42.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="242" G="251" B="254" />
                        <PrePosition />
                        <PreSize X="0.0000" Y="0.0000" />
                        <OutlineColor A="255" R="255" G="0" B="0" />
                        <ShadowColor A="255" R="110" G="110" B="110" />
                      </AbstractNodeData>
                      <AbstractNodeData Name="LO_OK_2" ActionTag="20964386" Tag="164" IconVisible="False" LeftMargin="-46.5000" RightMargin="-46.5000" TopMargin="-21.0000" BottomMargin="-21.0000" FontSize="36" LabelText="retry" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                        <Size X="93.0000" Y="42.0000" />
                        <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                        <Position />
                        <Scale ScaleX="1.0000" ScaleY="1.0000" />
                        <CColor A="255" R="242" G="251" B="254" />
                        <PrePosition />
                        <PreSize X="0.0000" Y="0.0000" />
                        <FontResource Type="Normal" Path="Resource/fonts/OverlapExt.ttf" Plist="" />
                        <OutlineColor A="255" R="255" G="0" B="0" />
                        <ShadowColor A="255" R="110" G="110" B="110" />
                      </AbstractNodeData>
                    </Children>
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="73.0000" Y="46.0000" />
                    <Scale ScaleX="1.0000" ScaleY="1.0000" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.5000" />
                    <PreSize X="0.0000" Y="0.0000" />
                    <SingleColor A="255" R="150" G="200" B="255" />
                    <FirstColor A="255" R="150" G="200" B="255" />
                    <EndColor A="255" R="255" G="255" B="255" />
                    <ColorVector ScaleY="1.0000" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="322.5570" Y="85.1044" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.4858" Y="0.2166" />
                <PreSize X="0.2199" Y="0.2341" />
                <FontResource Type="Default" Path="" Plist="" />
                <TextColor A="255" R="173" G="216" B="230" />
                <DisabledFileData Type="PlistSubImage" Path="btn-146-92-h.png" Plist="Resource/atlas/ui-common.plist" />
                <PressedFileData Type="PlistSubImage" Path="btn-146-92-h.png" Plist="Resource/atlas/ui-common.plist" />
                <NormalFileData Type="PlistSubImage" Path="btn-146-92-n.png" Plist="Resource/atlas/ui-common.plist" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="375.0000" Y="667.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.5000" />
            <PreSize X="0.8853" Y="0.2946" />
            <FileData Type="PlistSubImage" Path="common-dialog.png" Plist="Resource/atlas/ui-common.plist" />
            <BlendFunc Src="1" Dst="771" />
          </AbstractNodeData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameFile>