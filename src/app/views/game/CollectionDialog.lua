local CollectionInfoView = class("CollectionInfoView", cc.load("mvc").ViewBase)

CollectionInfoView.RESOURCE_FILENAME = "collection.collection_info"
CollectionInfoView.RESOURCE_BINDING = {
    actions = {enterAni = "enter",enterEvent = nil,exitAni = nil ,exitEvent = nil}
}

CollectionInfoView.LOCALE_LANG_LABEL = {
    Name        = _("OK"),
    info        = _("OK"),
}

CollectionInfoView.OTHER = {
    Collect_1             = _("Collect_1"),
    Collect_2             = _("Collect_2"),
    Collect_3             = _("Collect_3"),
    Collect_4             = _("Collect_4"),
    Collect_5             = _("Collect_5"),
    Collect_6             = _("Collect_6"),
    Collect_7             = _("Collect_7"),
    Collect_8             = _("Collect_8"),
    Collect_9             = _("Collect_9"),
    Collect_10             = _("Collect_10"),
    
    Collect_11             = _("Collect_11"),
    Collect_12             = _("Collect_12"),
    Collect_13             = _("Collect_13"),
    Collect_14             = _("Collect_14"),
    Collect_15             = _("Collect_15"),
    Collect_16             = _("Collect_16"),
    Collect_17             = _("Collect_17"),
    Collect_18             = _("Collect_18"),
    Collect_19             = _("Collect_19"),
    Collect_20             = _("Collect_20"),
    
    Collect_21             = _("Collect_21"),
    Collect_22             = _("Collect_22"),
    Collect_23             = _("Collect_23"),
    Collect_24             = _("Collect_24"),
    Collect_25             = _("Collect_25"),
    Collect_26             = _("Collect_26"),
    Collect_27             = _("Collect_27"),
    Collect_28             = _("Collect_28"),
    Collect_29             = _("Collect_29"),
    Collect_30             = _("Collect_30"),
    
    Collect_31             = _("Collect_31"),
    Collect_32             = _("Collect_32"),
    Collect_33             = _("Collect_33"),
    Collect_34             = _("Collect_34"),
    Collect_35             = _("Collect_35"),
    Collect_36             = _("Collect_36"),
    Collect_37             = _("Collect_37"),
    Collect_38             = _("Collect_38"),
    Collect_39             = _("Collect_39"),
    Collect_40             = _("Collect_40"),
    
    Collect_41             = _("Collect_41"),
    Collect_42             = _("Collect_42"),
    Collect_43             = _("Collect_43"),
    Collect_44             = _("Collect_44"),
    Collect_45             = _("Collect_45"),
    Collect_46             = _("Collect_46"),
    Collect_47             = _("Collect_47"),
    Collect_48             = _("Collect_48"),
    Collect_49             = _("Collect_49"),
    Collect_50             = _("Collect_50"),
    
    Collect_51             = _("Collect_51"),
    Collect_52             = _("Collect_52"),
    Collect_53             = _("Collect_53"),
    Collect_54             = _("Collect_54"),
    Collect_55             = _("Collect_55"),
    Collect_56             = _("Collect_56"),
    Collect_57             = _("Collect_57"),
    Collect_58             = _("Collect_58"),
    Collect_59             = _("Collect_59"),
    Collect_60             = _("Collect_60"),
    
    Collect_61             = _("Collect_61"),
    Collect_62             = _("Collect_62"),
    Collect_63             = _("Collect_63"),
    Collect_64             = _("Collect_64"),
    Collect_65             = _("Collect_65"),
    Collect_66             = _("Collect_66"),
    Collect_67             = _("Collect_67"),
    Collect_68             = _("Collect_68"),
    Collect_69             = _("Collect_69"),
    Collect_70             = _("Collect_70"),
    
    Collect_71             = _("Collect_71"),
    Collect_72             = _("Collect_72"),
    Collect_73             = _("Collect_73"),
    Collect_74             = _("Collect_74"),
    Collect_75             = _("Collect_75"),
    Collect_76             = _("Collect_76"),
    Collect_77             = _("Collect_77"),
    Collect_78             = _("Collect_78"),
    Collect_79             = _("Collect_79"),
    Collect_80             = _("Collect_80"),
    
    Collect_81             = _("Collect_81"),
    Collect_82             = _("Collect_82"),
    Collect_83             = _("Collect_83"),
    Collect_84             = _("Collect_84"),
    Collect_85             = _("Collect_85"),
    Collect_86             = _("Collect_86"),
    Collect_87             = _("Collect_87"),
    Collect_88             = _("Collect_88"),
    Collect_89             = _("Collect_89"),
    Collect_90             = _("Collect_90"),
    
    Collect_91             = _("Collect_91"),
    Collect_92             = _("Collect_92"),
    Collect_93             = _("Collect_93"),
    Collect_94             = _("Collect_94"),
    Collect_95             = _("Collect_95"),
    Collect_96             = _("Collect_96"),
    Collect_97             = _("Collect_97"),
    Collect_98             = _("Collect_98"),
    Collect_99             = _("Collect_99"),
    Collect_100             = _("Collect_100"),

}

function CollectionInfoView:onCreate()
    self:localLanguage()
end


function CollectionInfoView:showInfo(id)
    local infos =   helper.split(_("Collect_"..id),";")
    self.Name:setString(infos[1])
    self.info:setString(infos[2])
    self.collect:setSpriteFrame(string.format("collection-%d.png",id))
end


function CollectionInfoView:onClick( path,node,funcName)
    if  node:getName() =="btn_ok" then
        local function btnCallback(  node,eventType  )
            audio.playSound(GAME_EFFECT[13])
           self:closeSelf()
        end
        return btnCallback

    end
end

return CollectionInfoView
