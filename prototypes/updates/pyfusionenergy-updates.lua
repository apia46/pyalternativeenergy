
RECIPE("nuclear-sample"):replace_ingredient('uranium-ore', 'pu-238')

TECHNOLOGY('diamond-mining'):remove_pack('chemical-science-pack'):remove_pack('py-science-pack-2'):remove_prereq('excavation-2'):add_prereq('machines-mk02'):remove_prereq('filtration-2')


RECIPE("lead-container"):remove_unlock('diamond-mining'):add_unlock('production-science-pack')
RECIPE("science-coating"):remove_unlock('diamond-mining'):add_unlock('production-science-pack')
RECIPE("coated-container"):remove_unlock('diamond-mining'):add_unlock('production-science-pack')
RECIPE("grease-table-mk01"):remove_unlock('diamond-mining'):add_unlock('machines-mk02')
RECIPE("py-turbine"):remove_unlock('fusion-mk01')

RECIPE("py-heat-exchanger-mk02"):add_unlock('machines-mk02')
RECIPE("py-heat-exchanger-mk03"):add_unlock('machines-mk03')
RECIPE("py-heat-exchanger-mk04"):add_unlock('machines-mk04')

--BUILDINDS--
RECIPE("agitator-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("nmf-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("secondary-crusher-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 8})
RECIPE("thickener-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 7})
RECIPE("gas-separator-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("hydrocyclone-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
--RECIPE("automated-screener-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 3})
RECIPE("centrifugal-pan-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 10})
RECIPE("compressor-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 6})
RECIPE("jig-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("grease-table-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 7})
RECIPE("mixer-mk01"):add_ingredient({type = "item", name = "intermetallics", amount = 5})
RECIPE("py-heat-exchanger"):add_ingredient({type = "item", name = "intermetallics", amount = 5}):remove_unlock('fusion-mk01')


RECIPE("agitator-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("vacuum-pump-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount =2})
RECIPE("nmf-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("secondary-crusher-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 8})
RECIPE("diamond-mine"):replace_ingredient("advanced-circuit", "electronic-circuit")
RECIPE("thickener-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 7})
RECIPE("gas-separator-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("hydrocyclone-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("automated-screener-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 3})
RECIPE("centrifugal-pan-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 10})
RECIPE("compressor-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 6})
RECIPE("jig-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("grease-table-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 7})
RECIPE("mixer-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})
RECIPE("py-heat-exchanger-mk02"):add_ingredient({type = "item", name = "self-assembly-monolayer", amount = 5})

RECIPE("agitator-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("vacuum-pump-mk03"):add_ingredient({type = "item", name = "ns-material", amount =2})
--RECIPE("mo-mine"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("nmf-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("secondary-crusher-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 8})
RECIPE("thickener-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 7})
RECIPE("gas-separator-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10})
RECIPE("hydrocyclone-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10})
RECIPE("automated-screener-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 3})
RECIPE("centrifugal-pan-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 10})
RECIPE("regolite-mine"):add_ingredient({type = "item", name = "ns-material", amount = 10})
RECIPE("compressor-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 6})
RECIPE("jig-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("grease-table-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 7})
RECIPE("mixer-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})
RECIPE("py-heat-exchanger-mk03"):add_ingredient({type = "item", name = "ns-material", amount = 5})

RECIPE("agitator-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5})
RECIPE("vacuum-pump-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount =2})
RECIPE("nmf-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5})
RECIPE("secondary-crusher-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 8})
RECIPE("thickener-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 7})
RECIPE("gas-separator-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10})
RECIPE("hydrocyclone-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10})
RECIPE("automated-screener-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 3})
RECIPE("centrifugal-pan-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 10})
RECIPE("compressor-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 6})
RECIPE("jig-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5})
RECIPE("grease-table-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 7})
RECIPE("mixer-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5})
RECIPE("fusion-reactor-mk01"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5})
RECIPE("fusion-reactor-mk02"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5})
RECIPE("py-heat-exchanger-mk04"):add_ingredient({type = "item", name = "metastable-quasicrystal", amount = 5})

RECIPE("centrifuge-mk03"):add_ingredient({type = "item", name = "super-alloy", amount = 50}):add_ingredient({type = "item", name = "py-heat-exchanger", amount = 1})
RECIPE("centrifuge-mk04"):add_ingredient({type = "item", name = "nbti-alloy", amount = 30}):add_ingredient({type = "item", name = "wall-shield", amount = 5}):add_ingredient({type = "item", name = "science-coating", amount = 10}):add_ingredient({type = "item", name = "control-unit", amount = 5})

RECIPE("blanket"):add_ingredient({type = "item", name = "lithium", amount = 5})
RECIPE("magnetic-core"):add_ingredient({type = "item", name = "battery", amount = 1})
