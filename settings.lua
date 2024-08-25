data:extend({
    {
        type = "int-setting",
        name = "scale-factor",
        setting_type = "startup",
        default_value = 5,
        minimum_value = 1,
        maximum_value = 100,
        order = "a"
    },
    {
        type = "bool-setting",
        name = "only-vanilla",
        setting_type = "startup",
        default_value = true,
        order = 'ab'
    },
    {
        type = "bool-setting",
        name = "affect-pipes",
        setting_type = "startup",
        default_value = true,
        order = 'ba'
    },
    {
        type = "bool-setting",
        name = "affect-underground-pipes",
        setting_type = "startup",
        default_value = true,
        order = 'bb'
    },
    {
        type = "bool-setting",
        name = "affect-pumps",
        setting_type = "startup",
        default_value = true,
        order = 'bc'
    },
    {
        type = "bool-setting",
        name = "affect-tanks",
        setting_type = "startup",
        default_value = true,
        order = 'bd'
    }
})
