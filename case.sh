PS3="Choisir le menu:"

select plat in YASSA CALDOU MAFFE THIEB  quitter; do

  case $plat in
    YASSA)
      read -p "Entrer le nombre de plat: " num
      echo "$num * 1500 = $(($num*1500))"
      ;;
    CALDOU)
      read -p "Entrer le nombre de plat: " num
      echo "$num * 2000 = $(($num*2000))"
      
      ;;
    MAFFE)
     
      read -p "Entrer le nombre de plat: " num
      echo "$num * 500 = $(($num*500))"
      ;;
    THIEB)
     
      read -p "Entrer le nombre de plat: " num
      echo "$num * 2500 = $(($num*2500))"
      ;;
    quitter)
      break
      ;;
    *) 
      echo "Cette option est indisponible $REPLY"
      ;;
  esac
done

