--[[

    Dev : NexusScripts

]]

local formatter_config = {}

formatter_config.DEFAULT = {
    indent = {
        use_tabs = false,
        size = 4,
    },
    line_breaks = {
        before_blocks = true,
        after_statements = true,
        max_line_length = 100,
    },
    spaces = {
        around_operators = true,
        after_commas = true,
        inside_parentheses = false,
        inside_braces = true,
        inside_brackets = false,
    },
    alignment = {
        function_parameters = false,
        table_fields = false,
    },
    comments = {
        preserve_license = true,
        preserve_special = true,
        preserve_doc = true, 
        remove_single_only = false,
        remove_multi_only = false,
    },
    minify = {
        remove_whitespace = false,
        join_consecutive_statements = false,
        compress_tokens = false,
        shorten_identifiers = false,
    },
}

formatter_config.PRESETS = {
    default = formatter_config.DEFAULT,
    
    compact = {
        indent = {
            use_tabs = false,
            size = 2,
        },
        line_breaks = {
            before_blocks = true,
            after_statements = false,
            max_line_length = 120,
        },
        spaces = {
            around_operators = true,
            after_commas = true,
            inside_parentheses = false,
            inside_braces = false,
            inside_brackets = false,
        },
        alignment = {
            function_parameters = false,
            table_fields = false,
        },
        comments = formatter_config.DEFAULT.comments,
        minify = formatter_config.DEFAULT.minify,
    },
    
    expanded = {
        indent = {
            use_tabs = false,
            size = 4,
        },
        line_breaks = {
            before_blocks = true,
            after_statements = true,
            max_line_length = 80,
        },
        spaces = {
            around_operators = true,
            after_commas = true,
            inside_parentheses = true,
            inside_braces = true,
            inside_brackets = true,
        },
        alignment = {
            function_parameters = true,
            table_fields = true,
        },
        comments = formatter_config.DEFAULT.comments,
        minify = formatter_config.DEFAULT.minify,
    },
    
    minify = {
        indent = {
            use_tabs = false,
            size = 0,
        },
        line_breaks = {
            before_blocks = false,
            after_statements = false,
            max_line_length = 0,
        },
        spaces = {
            around_operators = false,
            after_commas = false,
            inside_parentheses = false,
            inside_braces = false,
            inside_brackets = false,
        },
        alignment = {
            function_parameters = false,
            table_fields = false,
        },
        comments = {
            preserve_license = true,
            preserve_special = true,
            preserve_doc = false,
            remove_single_only = false,
            remove_multi_only = false,
        },
        minify = {
            remove_whitespace = true,
            join_consecutive_statements = false,
            compress_tokens = true,
            shorten_identifiers = false,
        },
    },
    
    rmcomments = {
        indent = {
            use_tabs = false,
            size = 4,
        },
        line_breaks = {
            before_blocks = true,
            after_statements = true,
            max_line_length = 100,
        },
        spaces = {
            around_operators = true,
            after_commas = true,
            inside_parentheses = false,
            inside_braces = true,
            inside_brackets = false,
        },
        alignment = {
            function_parameters = false,
            table_fields = false,
        },
        comments = {
            preserve_license = false,
            preserve_special = false,
            preserve_doc = false,
            remove_single_only = false,
            remove_multi_only = false,
        },
        minify = {
            remove_whitespace = false,
            join_consecutive_statements = false,
            compress_tokens = false,
            shorten_identifiers = false,
        },
    },
}

function formatter_config.merge(base_config, user_config)
    local merged = {}
    
    for k, v in pairs(base_config) do
        if type(v) == "table" then
            merged[k] = {}
            for k2, v2 in pairs(v) do
                merged[k][k2] = v2
            end
        else
            merged[k] = v
        end
    end
    
    if user_config then
        for k, v in pairs(user_config) do
            if type(v) == "table" and type(merged[k]) == "table" then
                for k2, v2 in pairs(v) do
                    merged[k][k2] = v2
                end
            else
                merged[k] = v
            end
        end
    end
    
    return merged
end

function formatter_config.load(file_path)
    local file = io.open(file_path, "r")
    if not file then
        return nil, "Could not open config file: " .. file_path
    end
    
    local content = file:read("*all")
    file:close()
    
    local ok, config = pcall(function()
        local f = load("return " .. content)
        return f()
    end)
    
    if not ok then
        return nil, "Invalid configuration format: " .. tostring(config)
    end
    
    return config
end

function formatter_config.save(config, file_path)
    local file = io.open(file_path, "w")
    if not file then
        return false, "Could not open config file for writing: " .. file_path
    end
    
    local function serialize_table(tbl, indent)
        indent = indent or 0
        local spaces = string.rep("    ", indent)
        local result = "{\n"
        local keys = {}
        for k in pairs(tbl) do
            table.insert(keys, k)
        end
        table.sort(keys)
        
        for _, k in ipairs(keys) do
            local v = tbl[k]
            local key_str
            if type(k) == "string" then
                key_str = k
            else
                key_str = "[" .. tostring(k) .. "]"
            end
            
            result = result .. spaces .. "    " .. key_str .. " = "
            
            if type(v) == "table" then
                result = result .. serialize_table(v, indent + 1)
            elseif type(v) == "string" then
                result = result .. '"' .. v .. '"'
            else
                result = result .. tostring(v)
            end
            
            result = result .. ",\n"
        end
        
        return result .. spaces .. "}"
    end
    
    file:write(serialize_table(config))
    file:close()
    
    return true
end

function formatter_config.get_preset(name)
    return formatter_config.PRESETS[name] or formatter_config.DEFAULT
end

function formatter_config.create(config_or_preset_name)
    if type(config_or_preset_name) == "string" then
        return formatter_config.get_preset(config_or_preset_name)
    elseif type(config_or_preset_name) == "table" then
        return formatter_config.merge(formatter_config.DEFAULT, config_or_preset_name)
    else
        return formatter_config.DEFAULT
    end
end

return formatter_config
