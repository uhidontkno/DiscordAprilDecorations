$urlList = @(
  "https://cdn.discordapp.com/avatar-decoration-presets/v2_a_9c70ff0db80d85ee6d9690a0eeded0c8.png",
"https://cdn.discordapp.com/avatar-decoration-presets/v2_a_37dc2b53b273a457ff19ac2e3fda7e4c.png",
"https://cdn.discordapp.com/avatar-decoration-presets/v2_a_669e4e5337a7ebeffd87fe3f1008535f.png",
"https://cdn.discordapp.com/avatar-decoration-presets/v2_a_d6760c807d460b45e06427c09ab61390.png",
"https://cdn.discordapp.com/avatar-decoration-presets/v2_a_fc5d8621ab57442f49662f7f76a56212.png",
"https://cdn.discordapp.com/avatar-decoration-presets/v2_a_549ba042b8adef872b7a52ebb563dc69.png",
"https://cdn.discordapp.com/avatar-decoration-presets/v2_a_9b1a98ba163aeea50dc0ca42988acf1d.png",
"https://cdn.discordapp.com/avatar-decoration-presets/v2_a_33950b8d93e3ac1ae95c733d281fa7b5.png",
"https://cdn.discordapp.com/avatar-decoration-presets/v2_a_0b2d5d75d4f1287befda6b2180aec41d.png",
"https://cdn.discordapp.com/avatar-decoration-presets/v2_a_8f4e2c88d0b00a2e6eefdbe0a70944ec.png",
"https://cdn.discordapp.com/avatar-decoration-presets/v2_a_683904e98e8e7bca912125d360293cc6.png",
"https://cdn.discordapp.com/avatar-decoration-presets/v2_a_32c66e3421b5599cf0d1ebabc29dcd16.png",
"https://cdn.discordapp.com/avatar-decoration-presets/v2_a_c58a9fe37aa945ca41892f04fc61314b.png",
"https://cdn.discordapp.com/avatar-decoration-presets/v2_a_bf320a6355b8315bc37b188b84f1fe21.png",
"https://cdn.discordapp.com/avatar-decoration-presets/v2_a_49e93656ed29488809cb49b10a6854c6.png",
"https://cdn.discordapp.com/avatar-decoration-presets/v2_a_ffed32256ce57750cc9a87ed62b0a5ba.png",
"https://cdn.discordapp.com/avatar-decoration-presets/v2_a_700e6968d847aaa78b7063dc44b8ca9f.png",
"https://cdn.discordapp.com/avatar-decoration-presets/v2_a_30e06cfb4d725995f890b537529f94cd.png",
"https://cdn.discordapp.com/avatar-decoration-presets/v2_a_a7505dd1b4213f3969a2beef68404633.png",
"https://cdn.discordapp.com/avatar-decoration-presets/v2_a_f2627b85499c9c65683bff2e47c5f0d4.png"

)

$i = 1

foreach ($url in $urlList) {
    $fileName = "$i.png"
    Write-Host "Downloading $url to $fileName"
    Invoke-WebRequest -Uri $url -OutFile $fileName
    $i++
}