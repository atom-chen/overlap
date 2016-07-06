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
          <RenderColor A="150" R="85" G="107" B="47" />
        </AnimationInfo>
        <AnimationInfo Name="exit" StartIndex="70" EndIndex="80">
          <RenderColor A="150" R="147" G="112" B="219" />
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
          <AbstractNodeData Name="Sprite_1" ActionTag="-1277763822" Tag="203" FrameEvent="exitEnd" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="16.0000" RightMargin="16.0000" TopMargin="273.5000" BottomMargin="273.5000" ctype="SpriteObjectData">
            <Size X="718.0000" Y="787.0000" />
            <Children>
              <AbstractNodeData Name="content" ActionTag="40075346" Tag="211" IconVisible="False" LeftMargin="98.9782" RightMargin="99.0218" TopMargin="99.4092" BottomMargin="267.5908" ClipAble="False" BackColorAlpha="0" ComboBoxIndex="1" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
                <Size X="520.0000" Y="420.0000" />
                <AnchorPoint />
                <Position X="98.9782" Y="267.5908" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.1379" Y="0.3400" />
                <PreSize X="0.7242" Y="0.5337" />
                <SingleColor A="255" R="150" G="200" B="255" />
                <FirstColor A="255" R="150" G="200" B="255" />
                <EndColor A="255" R="255" G="255" B="255" />
                <ColorVector ScaleY="1.0000" />
              </AbstractNodeData>
              <AbstractNodeData Name="btn_close" ActionTag="364844696" CallBackType="Click" CallBackName="onClick" Tag="204" IconVisible="False" LeftMargin="267.9103" RightMargin="304.0897" TopMargin="590.7067" BottomMargin="104.2933" TouchEnable="True" FontSize="48" ButtonText="ok" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="116" Scale9Height="70" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                <Size X="146.0000" Y="92.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="340.9103" Y="150.2933" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.4748" Y="0.1910" />
                <PreSize X="0.2033" Y="0.1169" />
                <FontResource Type="Normal" Path="" Plist="" />
                <TextColor A="255" R="173" G="216" B="230" />
                <DisabledFileData Type="Default" Path="Default/Button_Disable.png" Plist="" />
                <PressedFileData Type="PlistSubImage" Path="btn-146-92-h.png" Plist="Resource/atlas/ui-common.plist" />
                <NormalFileData Type="PlistSubImage" Path="btn-146-92-n.png" Plist="Resource/atlas/ui-common.plist" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
            <Position X="375.0000" Y="667.0000" />
            <Scale ScaleX="0.0010" ScaleY="0.0010" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.5000" />
            <PreSize X="0.9573" Y="0.5900" />
            <FileData Type="PlistSubImage" Path="common-dialog.png" Plist="Resource/atlas/ui-common.plist" />
            <BlendFunc Src="1" Dst="771" />
          </AbstractNodeData>
        </Children>
      </ObjectData>
    </Content>
  </Content>
</GameFile>