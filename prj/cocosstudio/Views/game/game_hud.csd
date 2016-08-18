<GameFile>
  <PropertyGroup Name="game_hud" Type="Layer" ID="9280ef3a-adb7-4d95-b715-77aa88ba5ff5" Version="3.10.0.0" />
  <Content ctype="GameProjectContent">
    <Content>
      <Animation Duration="40" Speed="1.0000" ActivedAnimationName="show">
        <Timeline ActionTag="-4933285" Property="Position">
          <PointFrame FrameIndex="0" X="375.0000" Y="1234.0000">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="20" X="375.0000" Y="1234.0000">
            <EasingData Type="0" />
          </PointFrame>
        </Timeline>
        <Timeline ActionTag="-4933285" Property="Scale">
          <ScaleFrame FrameIndex="0" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="20" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="-4933285" Property="RotationSkew">
          <ScaleFrame FrameIndex="0" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="20" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="-4933285" Property="Alpha">
          <IntFrame FrameIndex="0" Value="0">
            <EasingData Type="0" />
          </IntFrame>
          <IntFrame FrameIndex="20" Value="255">
            <EasingData Type="0" />
          </IntFrame>
        </Timeline>
        <Timeline ActionTag="1379170462" Property="Position">
          <PointFrame FrameIndex="15" X="375.0000" Y="1.7981">
            <EasingData Type="0" />
          </PointFrame>
          <PointFrame FrameIndex="40" X="375.0000" Y="1.7981">
            <EasingData Type="0" />
          </PointFrame>
        </Timeline>
        <Timeline ActionTag="1379170462" Property="Scale">
          <ScaleFrame FrameIndex="15" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="40" X="1.0000" Y="1.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="1379170462" Property="RotationSkew">
          <ScaleFrame FrameIndex="15" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
          <ScaleFrame FrameIndex="40" X="0.0000" Y="0.0000">
            <EasingData Type="0" />
          </ScaleFrame>
        </Timeline>
        <Timeline ActionTag="1379170462" Property="Alpha">
          <IntFrame FrameIndex="15" Value="0">
            <EasingData Type="0" />
          </IntFrame>
          <IntFrame FrameIndex="40" Value="255">
            <EasingData Type="0" />
          </IntFrame>
        </Timeline>
      </Animation>
      <AnimationList>
        <AnimationInfo Name="show" StartIndex="0" EndIndex="40">
          <RenderColor A="255" R="255" G="250" B="205" />
        </AnimationInfo>
      </AnimationList>
      <ObjectData Name="Layer" Tag="279" ctype="GameLayerObjectData">
        <Size X="750.0000" Y="1334.0000" />
        <Children>
          <AbstractNodeData Name="panel_skill" ActionTag="408377535" Tag="117" IconVisible="False" PositionPercentXEnabled="True" LeftMargin="225.0000" RightMargin="225.0000" TopMargin="107.6233" BottomMargin="1146.3767" ClipAble="False" BackColorAlpha="0" ComboBoxIndex="1" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
            <Size X="300.0000" Y="80.0000" />
            <AnchorPoint ScaleX="0.5000" />
            <Position X="375.0000" Y="1146.3767" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.8594" />
            <PreSize X="0.4000" Y="0.0600" />
            <SingleColor A="255" R="150" G="200" B="255" />
            <FirstColor A="255" R="150" G="200" B="255" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </AbstractNodeData>
          <AbstractNodeData Name="Panel_2" ActionTag="-4933285" Tag="110" IconVisible="False" PositionPercentXEnabled="True" VerticalEdge="TopEdge" BottomMargin="1234.0000" ClipAble="False" BackColorAlpha="0" ComboBoxIndex="1" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
            <Size X="750.0000" Y="100.0000" />
            <Children>
              <AbstractNodeData Name="Image_1" ActionTag="-26027535" Tag="95" IconVisible="False" PositionPercentXEnabled="True" LeftMargin="-125.5000" RightMargin="-125.5000" BottomMargin="13.0000" Scale9Enable="True" LeftEage="13" RightEage="13" TopEage="13" BottomEage="13" Scale9OriginX="13" Scale9OriginY="13" Scale9Width="14" Scale9Height="14" ctype="ImageViewObjectData">
                <Size X="1001.0000" Y="87.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="1.0000" />
                <Position X="375.0000" Y="100.0000" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5000" Y="1.0000" />
                <PreSize X="1.3347" Y="0.8700" />
                <FileData Type="PlistSubImage" Path="dialog-back-white.png" Plist="Resource/atlas/ui-common.plist" />
              </AbstractNodeData>
              <AbstractNodeData Name="slider" ActionTag="1792325856" Tag="85" IconVisible="False" LeftMargin="-126.0000" RightMargin="-125.0000" TopMargin="86.6005" BottomMargin="0.3995" ctype="SpriteObjectData">
                <Size X="1001.0000" Y="13.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="374.5000" Y="6.8995" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.4993" Y="0.0690" />
                <PreSize X="1.3347" Y="0.1300" />
                <FileData Type="PlistSubImage" Path="top-splider-1.png" Plist="Resource/atlas/ui-game.plist" />
                <BlendFunc Src="1" Dst="771" />
              </AbstractNodeData>
              <AbstractNodeData Name="star1" ActionTag="-1381682285" Tag="21" IconVisible="False" PositionPercentXEnabled="True" VerticalEdge="TopEdge" LeftMargin="368.7000" RightMargin="336.3000" TopMargin="23.9758" BottomMargin="31.0242" ctype="SpriteObjectData">
                <Size X="45.0000" Y="45.0000" />
                <Children>
                  <AbstractNodeData Name="star1_1" ActionTag="-1171862579" VisibleForFrame="False" Tag="111" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="0.5000" RightMargin="0.5000" TopMargin="0.5000" BottomMargin="0.5000" ctype="SpriteObjectData">
                    <Size X="44.0000" Y="44.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="22.5000" Y="22.5000" />
                    <Scale ScaleX="1.0600" ScaleY="1.0600" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.5000" />
                    <PreSize X="0.9778" Y="0.9778" />
                    <FileData Type="PlistSubImage" Path="icon-main-stars.png" Plist="Resource/atlas/ui-home.plist" />
                    <BlendFunc Src="1" Dst="771" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="391.2000" Y="53.5242" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.5216" Y="0.5352" />
                <PreSize X="0.0600" Y="0.4500" />
                <FileData Type="PlistSubImage" Path="icon-stars-h.png" Plist="Resource/atlas/ui-game.plist" />
                <BlendFunc Src="1" Dst="771" />
              </AbstractNodeData>
              <AbstractNodeData Name="star2" ActionTag="-439601333" Tag="22" IconVisible="False" PositionPercentXEnabled="True" VerticalEdge="TopEdge" LeftMargin="449.2500" RightMargin="255.7500" TopMargin="23.9758" BottomMargin="31.0242" ctype="SpriteObjectData">
                <Size X="45.0000" Y="45.0000" />
                <Children>
                  <AbstractNodeData Name="star2_1" ActionTag="2059815738" VisibleForFrame="False" Tag="23" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="0.5000" RightMargin="0.5000" TopMargin="0.5000" BottomMargin="0.5000" ctype="SpriteObjectData">
                    <Size X="44.0000" Y="44.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="22.5000" Y="22.5000" />
                    <Scale ScaleX="1.0600" ScaleY="1.0600" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.5000" />
                    <PreSize X="0.9778" Y="0.9778" />
                    <FileData Type="PlistSubImage" Path="icon-main-stars.png" Plist="Resource/atlas/ui-home.plist" />
                    <BlendFunc Src="1" Dst="771" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="471.7500" Y="53.5242" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.6290" Y="0.5352" />
                <PreSize X="0.0600" Y="0.4500" />
                <FileData Type="PlistSubImage" Path="icon-stars-h.png" Plist="Resource/atlas/ui-game.plist" />
                <BlendFunc Src="1" Dst="771" />
              </AbstractNodeData>
              <AbstractNodeData Name="star3" ActionTag="-1855107923" Tag="24" IconVisible="False" PositionPercentXEnabled="True" VerticalEdge="TopEdge" LeftMargin="529.7250" RightMargin="175.2750" TopMargin="23.9758" BottomMargin="31.0242" ctype="SpriteObjectData">
                <Size X="45.0000" Y="45.0000" />
                <Children>
                  <AbstractNodeData Name="star3_1" ActionTag="612168896" VisibleForFrame="False" Tag="25" IconVisible="False" PositionPercentXEnabled="True" PositionPercentYEnabled="True" LeftMargin="0.5000" RightMargin="0.5000" TopMargin="0.5000" BottomMargin="0.5000" ctype="SpriteObjectData">
                    <Size X="44.0000" Y="44.0000" />
                    <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                    <Position X="22.5000" Y="22.5000" />
                    <Scale ScaleX="1.0600" ScaleY="1.0600" />
                    <CColor A="255" R="255" G="255" B="255" />
                    <PrePosition X="0.5000" Y="0.5000" />
                    <PreSize X="0.9778" Y="0.9778" />
                    <FileData Type="PlistSubImage" Path="icon-main-stars.png" Plist="Resource/atlas/ui-home.plist" />
                    <BlendFunc Src="1" Dst="771" />
                  </AbstractNodeData>
                </Children>
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="552.2250" Y="53.5242" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.7363" Y="0.5352" />
                <PreSize X="0.0600" Y="0.4500" />
                <FileData Type="PlistSubImage" Path="icon-stars-h.png" Plist="Resource/atlas/ui-game.plist" />
                <BlendFunc Src="1" Dst="771" />
              </AbstractNodeData>
              <AbstractNodeData Name="countdown" ActionTag="-1845376170" Tag="280" IconVisible="False" LeftMargin="46.4987" RightMargin="655.5013" TopMargin="17.7747" BottomMargin="26.2253" FontSize="48" LabelText="0&quot;" OutlineSize="2" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                <Size X="48.0000" Y="56.0000" />
                <AnchorPoint ScaleY="0.5000" />
                <Position X="46.4987" Y="54.2253" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="118" G="115" B="113" />
                <PrePosition X="0.0620" Y="0.5423" />
                <PreSize X="0.0640" Y="0.5600" />
                <FontResource Type="Normal" Path="Resource/fonts/OverlapExt.ttf" Plist="" />
                <OutlineColor A="255" R="255" G="255" B="255" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
              <AbstractNodeData Name="btn_pause" ActionTag="-55324204" CallBackType="Click" CallBackName="onClick" Tag="43" IconVisible="False" LeftMargin="660.6660" RightMargin="47.3340" TopMargin="10.2117" BottomMargin="42.7883" TouchEnable="True" FontSize="14" Scale9Enable="True" LeftEage="15" RightEage="15" TopEage="11" BottomEage="11" Scale9OriginX="15" Scale9OriginY="11" Scale9Width="12" Scale9Height="25" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="ButtonObjectData">
                <Size X="42.0000" Y="47.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="681.6660" Y="66.2883" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="255" G="255" B="255" />
                <PrePosition X="0.9089" Y="0.6629" />
                <PreSize X="0.0560" Y="0.4700" />
                <TextColor A="255" R="65" G="65" B="70" />
                <DisabledFileData Type="PlistSubImage" Path="btn-game-pause.png" Plist="Resource/atlas/ui-game.plist" />
                <PressedFileData Type="PlistSubImage" Path="btn-game-pause.png" Plist="Resource/atlas/ui-game.plist" />
                <NormalFileData Type="PlistSubImage" Path="btn-game-pause.png" Plist="Resource/atlas/ui-game.plist" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
              <AbstractNodeData Name="score" ActionTag="522326901" Tag="26" IconVisible="False" LeftMargin="278.4925" RightMargin="448.5075" TopMargin="18.7747" BottomMargin="25.2253" FontSize="48" LabelText="1" OutlineSize="2" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                <Size X="23.0000" Y="56.0000" />
                <AnchorPoint ScaleY="0.5000" />
                <Position X="278.4925" Y="53.2253" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="118" G="115" B="113" />
                <PrePosition X="0.3713" Y="0.5323" />
                <PreSize X="0.0307" Y="0.5600" />
                <FontResource Type="Normal" Path="Resource/fonts/OverlapExt.ttf" Plist="" />
                <OutlineColor A="255" R="255" G="255" B="255" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
              <AbstractNodeData Name="score_0" ActionTag="-2093110245" Tag="27" IconVisible="False" LeftMargin="138.1883" RightMargin="484.8117" TopMargin="17.7747" BottomMargin="26.2253" FontSize="48" LabelText="Round" OutlineSize="2" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                <Size X="127.0000" Y="56.0000" />
                <AnchorPoint ScaleY="0.5000" />
                <Position X="138.1883" Y="54.2253" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="118" G="115" B="113" />
                <PrePosition X="0.1843" Y="0.5423" />
                <PreSize X="0.1693" Y="0.5600" />
                <FontResource Type="Normal" Path="Resource/fonts/OverlapExt.ttf" Plist="" />
                <OutlineColor A="255" R="255" G="255" B="255" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.5000" />
            <Position X="375.0000" Y="1234.0000" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.9250" />
            <PreSize X="1.0000" Y="0.0750" />
            <SingleColor A="255" R="150" G="200" B="255" />
            <FirstColor A="255" R="150" G="200" B="255" />
            <EndColor A="255" R="255" G="255" B="255" />
            <ColorVector ScaleY="1.0000" />
          </AbstractNodeData>
          <AbstractNodeData Name="Panel_1" Visible="False" ActionTag="1379170462" Alpha="193" Tag="162" IconVisible="False" PositionPercentXEnabled="True" LeftMargin="275.0000" RightMargin="275.0000" TopMargin="1132.2019" BottomMargin="1.7981" ClipAble="False" BackColorAlpha="0" ComboBoxIndex="1" ColorAngle="90.0000" Scale9Width="1" Scale9Height="1" ctype="PanelObjectData">
            <Size X="200.0000" Y="200.0000" />
            <Children>
              <AbstractNodeData Name="LO_TIP_2" ActionTag="-1746445820" Tag="161" IconVisible="False" PositionPercentXEnabled="True" LeftMargin="-192.5000" RightMargin="-192.5000" TopMargin="121.3760" BottomMargin="36.6240" FontSize="36" LabelText="TAP THE SHAPES IN SEQUENCE, FROM BOTTOM TO TOP" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                <Size X="585.0000" Y="42.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="100.0000" Y="57.6240" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="72" G="76" B="63" />
                <PrePosition X="0.5000" Y="0.2881" />
                <PreSize X="2.9250" Y="0.2100" />
                <FontResource Type="Normal" Path="Resource/fonts/Overlap.ttf" Plist="" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
              <AbstractNodeData Name="LO_TIP_1" ActionTag="1170170044" VisibleForFrame="False" Tag="163" IconVisible="False" PositionPercentXEnabled="True" LeftMargin="-220.0600" RightMargin="-241.9400" TopMargin="128.1503" BottomMargin="43.8497" FontSize="24" LabelText="TAP THE SHAPES IN SEQUENCE, FROM BOTTOM TO TOP" ShadowOffsetX="2.0000" ShadowOffsetY="-2.0000" ctype="TextObjectData">
                <Size X="662.0000" Y="28.0000" />
                <AnchorPoint ScaleX="0.5000" ScaleY="0.5000" />
                <Position X="110.9400" Y="57.8497" />
                <Scale ScaleX="1.0000" ScaleY="1.0000" />
                <CColor A="255" R="72" G="76" B="63" />
                <PrePosition X="0.5547" Y="0.2892" />
                <PreSize X="3.3100" Y="0.1400" />
                <FontResource Type="Default" Path="" Plist="" />
                <OutlineColor A="255" R="255" G="0" B="0" />
                <ShadowColor A="255" R="110" G="110" B="110" />
              </AbstractNodeData>
            </Children>
            <AnchorPoint ScaleX="0.5000" />
            <Position X="375.0000" Y="1.7981" />
            <Scale ScaleX="1.0000" ScaleY="1.0000" />
            <CColor A="255" R="255" G="255" B="255" />
            <PrePosition X="0.5000" Y="0.0013" />
            <PreSize X="0.2667" Y="0.1499" />
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