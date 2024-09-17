function updtleek -d "updates 'jad's list of hatsu(ngs)ne' from spotify, tnx spotDL!!"
    cd ~/aud/mus
    spotdl https://open.spotify.com/playlist/7aHZlP6otFi0QLJOQtMZ7Z | tee /tmp/spotdl_output.log | grep "LookupError"
	if grep -q "LookupError" /tmp/spotdl_output.log
    		echo "> spotdl failed to grab the songs listed above. u should fix'em!"
	else
		echo "> 'jad's list of hatsu(ngs)ne' successfully updated!"
	end
    cd ~
end
