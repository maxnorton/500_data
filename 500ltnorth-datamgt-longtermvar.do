* Create long-term variable to distinguish between effects of marriage to northerners on long-timers and new migrants.

generate longtermN = 0
replace longtermN = 1 if MToNorth==1 & (migplac5==002  | migplac5==004 | migplac5==006 | migplac5==008 | migplac5==009 | migplac5==010 | migplac5==011 | migplac5==015 | migplac5==016 | migplac5==017 | migplac5==018 | migplac5==019 | migplac5==020 | migplac5==023 | migplac5==024 | migplac5==025 | migplac5==026 | migplac5==027 | migplac5==029 | migplac5==030 | migplac5==031 | migplac5==032 | migplac5==033 | migplac5==034 | migplac5==035 | migplac5==036 | migplac5==038 | migplac5==039 | migplac5==041 | migplac5==042 | migplac5==044 | migplac5==046 | migplac5==049 | migplac5==050 | migplac5==053 | migplac5==054 | migplac5==055 | migplac5==056)

generate shortN = 0
replace shortN = 1 if MToNorth==1 & longtermN==0


generate LTN_MWN_i = longtermN*MWithinNorth
generate LTN_wMAA_i = longtermN*willMarryAtAll
generate LTN_wMN_i = longtermN*willMarryN
generate LTN_MWN_wMAA_i = LTN_MWN_i*willMarryAtAll
generate LTN_MWN_wMN_i = LTN_MWN_i*willMarryN

generate LTN_tMWN_i = longtermN*tMWithinNorth
generate LTN_tWMAA_i = longtermN*tWMAA1
generate LTN_tWMN_i = longtermN*tWMN1
generate LTN_tMWN_tWMAA_i = LTN_tMWN_i*tWMAA1
generate LTN_tMWN_tWMN_i = LTN_tMWN_i*tWMN1

generate STN_MWN_i = shortN*MWithinNorth
generate STN_wMAA_i = shortN*willMarryAtAll
generate STN_wMN_i = shortN*willMarryN
generate STN_MWN_wMAA_i = STN_MWN_i*willMarryAtAll
generate STN_MWN_wMN_i = STN_MWN_i*willMarryN

generate STN_tMWN_i = shortN*tMWithinNorth
generate STN_tWMAA_i = shortN*tWMAA1
generate STN_tWMN_i = shortN*tWMN1
generate STN_tMWN_tWMAA_i = STN_tMWN_i*tWMAA1
generate STN_tMWN_tWMN_i = STN_tMWN_i*tWMN1
