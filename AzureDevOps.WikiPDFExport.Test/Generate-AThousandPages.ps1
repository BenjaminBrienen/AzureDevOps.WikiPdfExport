# create markdown files

for ($i =1; $i -le 1000; $i++)
{
    $j = [string]::Format("{0:D5}", $i)
    Remove-Item "$j.md" -ErrorAction SilentlyContinue
    New-Item "$j.md" -ItemType File -Value "# $j"

    $lorem="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ipsum a arcu cursus vitae congue. Egestas quis ipsum suspendisse ultrices gravida dictum fusce ut placerat. Nunc non blandit massa enim nec. Vel pretium lectus quam id leo in vitae turpis. Adipiscing vitae proin sagittis nisl rhoncus mattis. Aliquam sem et tortor consequat id porta nibh venenatis. Aenean euismod elementum nisi quis eleifend quam adipiscing. A scelerisque purus semper eget. Congue nisi vitae suscipit tellus mauris a diam maecenas. Lacus viverra vitae congue eu consequat ac felis. Enim ut sem viverra aliquet eget sit amet tellus. Eleifend donec pretium vulputate sapien nec sagittis aliquam. Risus pretium quam vulputate dignissim suspendisse. Velit aliquet sagittis id consectetur. Id velit ut tortor pretium viverra suspendisse potenti nullam. Vulputate dignissim suspendisse in est ante in nibh mauris.<br/>Risus commodo viverra maecenas accumsan. Vitae turpis massa sed elementum tempus egestas sed sed. Et malesuada fames ac turpis egestas sed tempus urna et. Tortor at auctor urna nunc. Congue eu consequat ac felis. Aliquam etiam erat velit scelerisque in dictum non consectetur. Ullamcorper malesuada proin libero nunc. Ultricies integer quis auctor elit. Tempus quam pellentesque nec nam. At tempor commodo ullamcorper a lacus vestibulum. Tortor at auctor urna nunc id cursus metus. Aliquet porttitor lacus luctus accumsan tortor posuere ac ut consequat. Purus sit amet luctus venenatis lectus magna fringilla urna. Leo integer malesuada nunc vel risus commodo viverra. Vel orci porta non pulvinar. Venenatis tellus in metus vulputate eu scelerisque felis imperdiet. Nisi vitae suscipit tellus mauris.<br/>Semper eget duis at tellus at. Sit amet consectetur adipiscing elit pellentesque habitant. Consectetur purus ut faucibus pulvinar elementum integer enim. Non curabitur gravida arcu ac tortor dignissim. Aliquet enim tortor at auctor urna. Netus et malesuada fames ac turpis egestas integer. Eu sem integer vitae justo eget magna fermentum iaculis. Lectus mauris ultrices eros in. Fermentum leo vel orci porta. Sed adipiscing diam donec adipiscing tristique risus. Nunc id cursus metus aliquam eleifend mi in nulla. Sed sed risus pretium quam vulputate dignissim suspendisse in est. Ultrices mi tempus imperdiet nulla malesuada pellentesque elit eget gravida. Nibh sit amet commodo nulla facilisi. Feugiat in ante metus dictum at tempor commodo ullamcorper a. Lorem mollis aliquam ut porttitor leo a diam sollicitudin." # spellchecker:disable-line
    Add-Content "$j.md" -Value ""
    Add-Content "$j.md" -Value ""
    Add-Content "$j.md" -Value $lorem
}

# create .order file
$files = Get-ChildItem -Filter *.md

Remove-Item .order -ErrorAction SilentlyContinue
New-Item .order -ItemType File
foreach ($file in $files) {
    $name = [io.path]::GetFileNameWithoutExtension($file.FullName)
    Add-Content .order -Value "$name"
}
