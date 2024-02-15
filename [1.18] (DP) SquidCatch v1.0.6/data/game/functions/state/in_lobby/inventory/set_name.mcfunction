

data modify block 999999 99 999999 Text3 set value '{"nbt":"name.Text[]","storage":"game:teams","interpret":true,"separator":" "}'
data modify storage game:teams name.Text set from block 999999 99 999999 Text3
