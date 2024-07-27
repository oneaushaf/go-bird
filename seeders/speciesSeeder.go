package seeders

import (
	"github.com/oneaushaf/go-bird/models"
)

var species []models.Species

func initSpecies() {
	species = []models.Species{
		{
			Name:        "Bangau leher-hitam",
			ScientificName: "Ephippiorhynchus asiaticus",
			Category: "Near Threatened (NT)",
			Training:    40,
			Untrained:   0,
			Testing:     5,
			Validation:  5,
			Description: "Bangau besar dengan paruh hitam besar, kepala dan leher hitam. Betina dengan mata kuning. Saat terbang perhatikan perut putih dan sebagian besar sayap putih dengan panel tengah hitam, kaki panjang merah/merah muda menjuntai ke belakang. Remaja memiliki sayap atas yang lebih gelap. Biasanya ditemukan sendiri atau berpasangan di sekitar lahan basah tropis dan kolam.",
		},
		{
			Name:       "Curik Bali",
			ScientificName: "Leucopsar rothschildi",
			Category: "Critically Endangered (CR)",
			Training:   40,
			Untrained:  0,
			Testing:    5,
			Validation: 5,
			Description: "Burung jalak putih yang mencolok, dengan ekor dan sayap berujung hitam, kulit botak berwarna biru di wajah, serta bulu-bulu hias panjang menggantung dari tengkuk. Remaja memiliki jambul yang lebih pendek dibandingkan dewasa, dengan sapuan kuning di tubuh. Ditemukan dalam kelompok kecil di hutan terbuka, sering menghabiskan waktu di pepohonan dan mencari makan di tanah. Menghindari hutan lebat. Terbatas di Bali sisi barat laut, dengan beberapa populasi hasil introduksi di kawasan pegunungan di Ubud dan Pulau Nusa Penida. Dibedakan dari jalak putih berdasarkan warna hitam di sayap yang terbatas di ujung, serta memiliki kulit wajah botak biru. Nyanyian berupa campuran nada-nada ocehan parau dan siulan.",
		},
		{
			Name:       "Ekek Geling",
			ScientificName: "Cissa thalassina",
			Category: "Critically Endangered (CR)",
			Training:   40,
			Untrained:  0,
			Testing:    5,
			Validation: 5,
			Description: "Sangat jarang dan hampir punah di alam. Burung endemik Jawa dengan tubuh hijau menyala, topeng “bandit” hitam serta paruh merah lipstik, mudah dikenali dan sulit dilupakan bagi pengamat burung yang cukup beruntung untuk menemukannya di alam. Ditemukan hanya di hutan kaki-bukit, sering bergabung dengan kelompok campuran. Terkadang ribut, bahkan ketika bersembunyi di strata tengah hutan yang lebat, menghasilkan ocehan menjerit dan suara ‘cair’ yang riang “wee’da’da!”.",
		},
		{
			Name:       "Gelatik Jawa",
			ScientificName: "Lonchura oryzivora",
			Category: "Endangered (EN)",
			Training:   40,
			Untrained:  0,
			Testing:    5,
			Validation: 5,
			Description: "Burung pipit kecil dan gempal dengan paruh merah muda yang sangat tebal. Kepala hitam dan pola pipi putih sangat khas. Remaja memiliki pola warna yang mirip, namun lebih kelabu. Bersifat sosial; mencari makan dalam kelompok dan tidur berdampingan. Mencari makan di sawah, ladang rumput, padang, serta kawasan urban dan sub-urban (di lokasi terintroduksi). Panggilan berupa satu atau lebih kicauan merdu. Sebaran asli di Pulau Jawa dan Bali di Indonesia, saat ini cukup langka.",
		},
		{
			Name:       "Kakatua Raja",
			ScientificName: "Probosciger aterrimus",
			Category: "Near Threatened (NT)",
			Training:   40,
			Untrained:  0,
			Testing:    5,
			Validation: 5,
			Description: "Kakatua hitam, khas, berparuh sangat besar. Menghuni hutan hujan dan area berpepohonan di Papua dan Semenanjung Cape York sisi utara. Bercak besar kulit merah di pipi dan jambul hitam panjang menjadi penciri utama. Menggunakan tongkat untuk mematuk di pohon selama menandai wilayah. Saat terbang, perhatikan ekor yang seluruhnya hitam (Red-tailed Black-Cockatoo memiliki palang ekor merah cerah). Suara berupa siulan tajam atau cicitan, tanpa ratapan yang sedih panjang seperti Red-tailed Black-Cockatoo.",
		},
		{
			Name:       "Luntur harimau",
			ScientificName: "Harpactes erythrocephalus",
			Category: "Least Concerned (LC)",
			Training:   40,
			Untrained:  0,
			Testing:    5,
			Validation: 5,
			Description: "Satu-satunya luntur di wilayah sebaran dengan tubuh bawah oranye-kuning, baik jantan maupun betina. Jantan berpunggung cokelat kayu manis dan kepala kuning-hijau. Betina punggung cokelat kusam dan tubuh bawah sedikit kuning. Menghuni hutan dataran rendah dan kaki bukit, di mana ia sering dijumpai pada tajuk bawah dan tengah. Mengeluarkan rangkaian teriakan tiga hingga empat nada.",
		},
		{
			Name:       "Merak Hijau",
			ScientificName: "Pavo muticus",
			Category: "Endangered (EN)",
			Training:   40,
			Untrained:  0,
			Testing:    5,
			Validation: 5,
			Description: "Burung tanah berukuran besar, penghuni hutan tropis terbuka, sering di dekat air. Cantik dan unik, mudah dikenali di wilayah sebarannya. Kedua jenis kelamin memiliki leher hijau berkilau, sayap gelap, serta jambul hijau gelap yang selalu tegak vertikal. Jantan memiliki bulu-bulu sangat panjang dan besar khas burung merak, yang dibuka mengipas saat ritual kawin. Betina dengan ekor pendek tanpa bulu hias, namun tetap memiliki warna hijau mengilap seperti pada bulu hias jantan.",
		},
		{
			Name:       "Paok Bidadari",
			ScientificName: "Pitta nympha",
			Category: "Vulnerable (VU)",
			Training:   40,
			Untrained:  0,
			Testing:    5,
			Validation: 5,
			Description: "Penghuni tanah yang indah dari hutan yang teduh. Dewasa tubuh atas sebagian besar hijau, tubuh bawah cokelat krem, dengan bercak merah terang di ekor bawah dan tengah perut serta kepala yang beraneka warna, dengan topeng hitam, alis cokelat, tenggorokan putih, dan mahkota hitam-kemerahan. Paok hujan yang serupa memiliki sayap biru cerah. Saat terbang, perhatikan sayap hijau cerah dengan bahu biru berkilap dan bercak putih. Suara nyanyian berupa siulan jernih, terdiri empat suku kata berpasangan, pee-yu, pee-yu.",
		},
		{
			Name:       "Raja udang kalung-biru jawa",
			ScientificName: "Alcedo euryzona",
			Category: "Critically Endangered (CR)",
			Training:   40,
			Untrained:  0,
			Testing:    5,
			Validation: 5,
			Description: "Burung raja-udang kecil yang sangat jarang, penghuni aliran air dan sungai berhutan hingga kawasan pegunungan bawah. Sangat terancam dan hanya dapat ditemukan di beberapa lokasi yang tersisa. Kedua jenis kelamin memiliki punggung dan ekor biru-perak, tenggorokan putih serta pita dada hijau-biru yang lebar. Jantan memiliki perut putih dan paruh seluruhnya hitam, betina memiliki perut seluruhnya oranye serta pangkal paruh bawah merah. Dibedakan dari raja-udang erasia berdasarkan warna yang lebih kusam dan gelap, serta tidak adanya bercak oranye di belakang mata.",
		},
		{
			Name:       "Sikatan besar",
			ScientificName: "Cyornis concretus",
			Category: "Least Concerned (LC)",
			Training:   40,
			Untrained:  0,
			Testing:    5,
			Validation: 5,
			Description: "Burung sikatan kecil dengan panel ekor putih cerah. Jantan seluruh tubuh biru dengan perut putih kotor. Betina cokelat dengan perut pucat dan pola putih rapi di dada atas. Kedua jenis kelamin memiliki ekor bawah putih dan dua coretan putih di ekor atas, paling terlihat saat terbang. Di Sumatera dan Kalimantan, ekor dan perut putih membedakannya dari berbagai jenis sikatan berwarna biru dan putih lain, seperti sikatan biru-putih, sikatan tungging-merah sikatan aceh yang sangat langka; sementara pola putih di dada atas pada betina unik di antara berbagai jenis sikatan lain.",
		},
		{
			Name:       "Baza hitam",
			ScientificName: "Aviceda leuphotes",
			Category: "Least Concerned (LC)",
			Training:   32,
			Untrained:  0,
			Testing:    4,
			Validation: 4,
			Description: "Burung pemangsa berukuran sedang yang sangat khas. Seluruhnya hitam dengan pita dada putih tebal dan garis-garis putih berkarat di perut. Jambul ramping dapat ditegakkan secara vertikal atau miring ketika bertengger, tetapi cenderung disembunyikan saat terbang. Jika saat terbang terlihat dari atas, perhatikan pola “kotak-kotak” di sayap atas. Saat berbiak memilih hutan kaki bukit dan dataran rendah, tetapi dapat ditemukan di habitat yang lebih terbuka di daerah perlintasan dan wilayah tujuan migrasi. Bersifat cukup sosial di luar musim kawin, sering terbang dalam kawanan besar dan bertengger mengelompok. Mengeluarkan suara mirip peluit yang melengking dan bergema, sering kali saat saat terbang.",
		},
		{
			Name:       "Cendrawasih Kecil",
			ScientificName: "Paradisaea minor",
			Category: "Least Concerned (LC)",
			Training:   32,
			Untrained:  0,
			Testing:    4,
			Validation: 4,
			Description: "Burung berukuran besar penghuni hutan dan tepian hutan di dataran rendah dan kaki bukit. Kedua jenis kelamin memiliki punggung kuning dan mata kuning. Jantan memiliki dada cokelat kemerahan serta bulu hias putih dan kuning yang ditegakkan di atas punggung saat tarian kawin, sambil mengepakkan sayap cokelat kemerahan. Jantan dibedakan dari cendrawasih besar berdasarkan punggung kuningnya dan dari cendrawasih kaisar (Papua Nugini) berdasarkan dada cokelatnya. Betina dibedakan dari spesies lain berdasarkan tubuh bawah putih dan tudung hitam.",
		},
	}
}
