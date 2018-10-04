#可读性优化版   #参数用英文字母

defmodule Ld2e do 
    @句 "；" ; @言 "，" ; @令 "为" ; @求 "求" ; @记 "记"
    @确定 true ; @此 :Ld2e
    import Lib ; import DS
    @指令1 "List1为'1234234'；记a为List1，b为2；求a中b的个数"
    
    def 开 do 分(); 印 "完" end

    def 分 do 拆( @指令1, @句) |> 特解 end

    def 特解 句 do  _仓= 储 @此; 句 |> 生一 |> 生二 |> 生三 end

    def 无 我 do 我 end

    def 生 句, 核\\&(&1) do [名,实|_] = 拆 句, @令
        键 = 转 名; 值 = 核.(实)
        入 @此, {键,值} end

    def 生一 [一|言] do 生 一,&(文去 &1,"'"); 言 end
    
    def 生二 [其|它] do @确定 = 文起 其,@记
        [言一,言二] = 文移(其,1) |> 拆(@言)
        生 言一,&转/1; 生 言二;   它    end

    def 生三 [再|_] do @确定 = 文起 再,@求
        键集 = 列(@此,全键()) |> 循平
        组 = 文移(再,1) |> 拆("") |> 组去(0) |> 组去(-1) |> 循映(&转/1)
        [a,b|_] = 循选( 组, &(&1 in 键集) ) #|> 解
        
        印原 [a,b,v,组,键集]
        
    end

    def 解(名) when is_atom 名 do
        # 取值，值为a型，以值解值

    end
end

Ld2e.开