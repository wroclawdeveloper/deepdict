<?php
if(isset($_GET["f"]) && isset($_GET["addfolder"])) {
    $addfolder = filter_input(INPUT_GET, 'addfolder', FILTER_SANITIZE_STRING);
    $parent = filter_input(INPUT_GET, 'parent', FILTER_SANITIZE_STRING);
    require_once(__DIR__ . '/pluginconfig.php');

    $parent = $parent ? $parent.'/' : '';

    if ($addfolder != '' && !is_dir($useruploadpath.$parent.$addfolder)) {
        mkdir($useruploadpath.$parent.$addfolder);
        loadImages($parent);
    }
} elseif(isset($_GET["f"]) && isset($_GET["folder"])){
    $folder = filter_input(INPUT_GET, 'folder', FILTER_SANITIZE_STRING);
    if($folder != '') {
        loadImages($folder);
    }
} elseif(isset($_GET["f"])){
    $f = filter_input(INPUT_GET, 'f', FILTER_SANITIZE_STRING);
    if($f = "loadImages") {
        loadImages();
    }
}

function loadImages($folder = '') {
    require(__DIR__ . '/pluginconfig.php');
    if($folder) {
        $useruploadpath .= $folder.'/';
        $useruploadfolder .= '/'.$folder;
    }
    $curr_path = str_replace(__DIR__.'/uploads/', '', $useruploadpath);

    if(file_exists($useruploadpath)){
        //List only folders (Directories):
        $dir_count=0;
        $image_height = 100;

        foreach(glob($useruploadpath.'*', GLOB_ONLYDIR) as $dir) {
            if($folder != basename($dir)) {
//                $dir = str_replace($Mydir, '', $dir);
//                var_dump($dir);
                echo '<div class="fileDiv"
                     ondblclick="loadFolder(\'' . basename($dir) . '\');"
                     onclick="showEditBarFolder(\'' . $dir. '\', \'' . $image_height . '\', \'' . $dir_count . '\',  \'' . basename($dir) . '\');"
                     data-imgid="f_'.$dir_count.'">
                    <div class="imgDiv"><img class="fileImg lazy" src="img/folder-icon.png"></div>
                    <p class="fileDescription">' . basename($dir) . '</p>
                </div>';
                $dir_count++;
            }
        }

        $filesizefinal = 0;
        $count = 0;

        $dir = $useruploadpath;
        $files = glob("$dir*.{jpg,jpe,jpeg,png,gif,ico}", GLOB_BRACE);
        usort($files, create_function('$a,$b', 'return filemtime($a) - filemtime($b);'));
        for($i=count($files)-1; $i >= 0; $i--):
            $image = $files[$i];
            $image_pathinfo = pathinfo($image);
            $image_extension = $image_pathinfo['extension'];
            $image_filename = $image_pathinfo['filename'];
            $image_basename = $image_pathinfo['basename'];

            // image src/url
            $protocol = !empty($_SERVER['HTTPS']) ? 'https://' : 'http://';
            $site = $protocol. $_SERVER['SERVER_NAME'] .'/';
            $image_url = $site.$useruploadfolder."/".$image_basename;

            $size = getimagesize($image);
            $image_height = $size[0];
            $file_size_byte = filesize($image);
            $file_size_kilobyte = ($file_size_byte/1024);
            $file_size_kilobyte_rounded = round($file_size_kilobyte,1);
            $filesizetemp = $file_size_kilobyte_rounded;
            $filesizefinal = round($filesizefinal + $filesizetemp) . " KB";
            $calcsize = round($filesizefinal + $filesizetemp);
            $count = ++$count;

            if($file_style == "block") { ?>
                <div class="fileDiv"
                     onclick="showEditBar('<?php echo $image_url; ?>','<?php echo $image_height; ?>','<?php echo $count; ?>','<?php echo $image_basename; ?>');"
                     ondblclick="showImage('<?php echo $image_url; ?>','<?php echo $image_height; ?>','<?php echo $image_basename; ?>');"
                     data-imgid="<?php echo $count; ?>">
                    <div class="imgDiv"><img class="fileImg lazy" data-original="<?php echo $image_url; ?>"></div>
                    <p class="fileDescription"><span class="fileMime"><?php echo $image_extension; ?></span> <?php echo $image_filename; ?><?php if($file_extens == "yes"){echo ".$image_extension";} ?></p>
                    <p class="fileTime"><?php echo date ("F d Y H:i", filemtime($image)); ?></p>
                    <p class="fileTime"><?php echo $filesizetemp; ?> KB</p>
                </div>
            <?php } elseif($file_style == "list") { ?>
                <div class="fullWidthFileDiv"
                     onclick="showEditBar('<?php echo $image_url; ?>','<?php echo $image_height; ?>','<?php echo $count; ?>','<?php echo $image_basename; ?>');"
                     ondblclick="showImage('<?php echo $image_url; ?>','<?php echo $image_height; ?>','<?php echo $image_basename; ?>');"
                     data-imgid="<?php echo $count; ?>">
                    <div class="fullWidthimgDiv"><img class="fullWidthfileImg lazy" data-original="<?php echo $image_url; ?>"></div>
                    <p class="fullWidthfileDescription"><?php echo $image_filename; ?><?php if($file_extens == "yes"){echo ".$image_extension";} ?></p>

                    <div class="qEditIconsDiv">
                        <img title="Delete File" src="img/cd-icon-qtrash.png" class="qEditIconsImg" onclick="window.location.href = 'imgdelete.php?img=<?php echo $image_basename; ?>'">
                    </div>

                    <p class="fullWidthfileTime fullWidthfileMime fullWidthlastChild"><?php echo $image_extension; ?></p>
                    <p class="fullWidthfileTime"><?php echo $filesizetemp; ?> KB</p>
                    <p class="fullWidthfileTime fullWidth30percent"><?php echo date ("F d Y H:i", filemtime($image)); ?></p>
                </div>
            <?php }

        endfor;
        if($count == 0){
            echo "<div class='fileDiv' style='display:none;'></div>";
            $calcsize = 0;
        }
        if($calcsize == 0){
            $filesizefinal = "0 KB";
        }
        if($calcsize >= 1024){
            $filesizefinal = round($filesizefinal/1024,1) . " MB";
        }

        $folder_info = str_replace('/', ' > ', str_replace(__DIR__.'/uploads/', '', $useruploadpath)).'  ::';
        echo "
        <script>
            $( '#finalsize' ).html('$filesizefinal');
            $( '#finalcount' ).html('$count');
            $( '#folder_path' ).val('$curr_path');
            $( '#folder_info' ).html('$folder_info');";
            if($curr_path != '') {
            echo "$( '#folder_back' ).html('<img title=\"Confij\" src=\"img/folder-back.png\" class=\"headerIcon floatRight\" onclick=\"reloadImages();\">');";
            echo "$( '#folder_add' ).html('');";
            } else {
            echo "$( '#folder_add' ).html('<img title=\"Utwórz folder\" src=\"img/folderadd-icon.png\" class=\"headerIcon floatRight\" onclick=\"addFolder();\">');";
            echo "$( '#folder_back' ).html('');";
            }
        echo "            
        </script>
        ";
    } else {
        echo '<div id="folderError">'.$alerts9.' <b>'.$useruploadfolder.'</b> '.$alerts10;
    }
}

function pathHistory() {
    require(__DIR__ . '/pluginconfig.php');
    $latestpathes = array_slice($foldershistory, -3);
    $latestpathes = array_reverse($latestpathes);
    foreach($latestpathes as $folder) {
        echo '<p class="pathHistory" onclick="useHistoryPath(\''.$folder.'\');">'.$folder.'</p>';
    }
}
