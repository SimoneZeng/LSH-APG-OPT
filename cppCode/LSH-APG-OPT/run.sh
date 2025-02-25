repeats=10

for dataset in "deep1m" "sift"
do
    for seed in $(seq 1 $repeats)
    do
        for i in 0.4 0.5 0.6 0.7 0.8
        do
            echo "Running LSH-APG on $dataset with seed=$seed"
            ./lgo $dataset 1 $i
        done
    done
done