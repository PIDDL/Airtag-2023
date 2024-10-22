# !/bin/bash

# Reset directories for each run.
# directories=("./training_data/amaan" "./embedding_data/amaan" "./ground_data/my_ground_data" "./models/amaan" "./logs/amaan")

# for dir in "${directories[@]}"; do
#     if [ -d "$dir" ]; then
#         rm -rf "$dir"
#     fi
# done
# for dir in "${directories[@]}"; do
#     mkdir -p "$dir"
# done

# # Import training data files for SDatasets.
# nohup cp ./training_data/training_data_original/S1_train \
#  ./training_data/training_data_original/S1_benign \
#  ./training_data/training_data_original/S1_test \
#  ./training_data/training_data_original/S2_train \
#  ./training_data/training_data_original/S2_benign \
#  ./training_data/training_data_original/S2_test \
#  ./training_data/training_data_original/S3_train \
#  ./training_data/training_data_original/S3_benign \
#  ./training_data/training_data_original/S3_test \
#  ./training_data/training_data_original/S4_train \
#  ./training_data/training_data_original/S4_benign \
#  ./training_data/training_data_original/S4_test \
#  ./training_data/training_data_original/training_preprocessed_logs_S1-CVE-2015-5122_windows \
#  ./training_data/training_data_original/training_preprocessed_logs_S2-CVE-2015-3105_windows \
#  ./training_data/training_data_original/testing_preprocessed_logs_S3-CVE-2017-11882_windows \
#  ./training_data/training_data_original/training_preprocessed_logs_S4-CVE-2017-0199_windows_py \
#  ./training_data/training_data_original/vocab_atlas_single1.txt \
#  ./training_data/training_data_original/vocab_atlas_single2.txt \
#  ./training_data/training_data_original/vocab_atlas_single3.txt \
#  ./training_data/training_data_original/vocab_atlas_single4.txt \
#  ./training_data/amaan &

# # Import ground data files for SDatasets.
# nohup cp ./ground_data/ground_data_original/S1_number_.npy \
#  ./ground_data/ground_data_original/S2_number_.npy \
#  ./ground_data/ground_data_original/S3_number_.npy \
#  ./ground_data/ground_data_original/S4_number_.npy \
#  ./ground_data/my_ground_data &

# wait
# echo "data imports done."

# nohup python create_pretraining_data.py \
#  --input_file=training_data/amaan/S1_train \
#  --output_file=training_data/amaan/S1.tfrecord \
#  --vocab_file=training_data/amaan/vocab_atlas_single1.txt \
#  --do_lower_case=True \
#  --max_seq_length=32  \
#  --max_predictions_per_seq=20  \
#  --masked_lm_prob=0.15  \
#  --random_seed=12345  \
#  --dupe_factor=5 &

# nohup python create_pretraining_data.py  \
#   --input_file=training_data/amaan/S2_train \
#   --output_file=training_data/amaan/S2.tfrecord \
#   --vocab_file=training_data/amaan/vocab_atlas_single2.txt \
#   --do_lower_case=True \
#   --max_seq_length=32  \
#  --max_predictions_per_seq=20  \
#  --masked_lm_prob=0.15  \
#  --random_seed=12345  \
#  --dupe_factor=5 &

# nohup python create_pretraining_data.py  \
#  --input_file=training_data/amaan/S3_train \
#  --output_file=training_data/amaan/S3.tfrecord \
#  --vocab_file=training_data/amaan/vocab_atlas_single3.txt \
#  --do_lower_case=True \
#  --max_seq_length=32  \
#  --max_predictions_per_seq=20  \
#  --masked_lm_prob=0.15  \
#  --random_seed=12345  \
#  --dupe_factor=5 &

# nohup python create_pretraining_data.py  \
#  --input_file=training_data/amaan/S4_train \
#  --output_file=training_data/amaan/S4.tfrecord \
#  --vocab_file=training_data/amaan/vocab_atlas_single4.txt \
#  --do_lower_case=True \
#  --max_seq_length=32  \
#  --max_predictions_per_seq=20  \
#  --masked_lm_prob=0.15  \
#  --random_seed=12345  \
#  --dupe_factor=5 &

# wait
# echo "pre-training data created."

# nohup python -u run_pretraining.py  \
#   --input_file=training_data/amaan/S1.tfrecord \
#   --output_dir=models/amaan/S1 \
#   --do_train=True \
#   --do_eval=True  \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=uncased_L-6_H-128_A-2/bert_model.ckpt \
#   --train_batch_size=4  \
#  --max_seq_length=32  \
#  --max_predictions_per_seq=20  \
#  --num_train_steps=10000  \
#  --num_warmup_steps=10  \
#  --gpu=0  \
#  --learning_rate=2e-5 > logs/amaan/trainS1.log &

# wait
# echo "pre-training data s1 run."

# nohup python -u run_pretraining.py  \
#   --input_file=training_data/amaan/S2.tfrecord \
#   --output_dir=models/amaan/S2 \
#   --do_train=True \
#   --do_eval=True  \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=uncased_L-6_H-128_A-2/bert_model.ckpt \
#   --train_batch_size=4  \
#  --max_seq_length=32  \
#  --max_predictions_per_seq=20  \
#  --num_train_steps=10000  \
#  --num_warmup_steps=10  \
#  --gpu=0  \
#  --learning_rate=2e-5 > logs/amaan/trainS2.log &

# wait
# echo "pre-training data s2 run."

#   nohup python -u run_pretraining.py  \
#   --input_file=training_data/amaan/S3.tfrecord \
#   --output_dir=models/amaan/S3 \
#   --do_train=True \
#   --do_eval=True  \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=uncased_L-6_H-128_A-2/bert_model.ckpt \
#   --train_batch_size=4  \
#  --max_seq_length=32  \
#  --max_predictions_per_seq=20  \
#  --num_train_steps=10000  \
#  --num_warmup_steps=10  \
#  --gpu=0  \
#  --learning_rate=2e-5 > logs/amaan/trainS3.log &

# wait
# echo "pre-training data s3 run."

#   nohup python -u run_pretraining.py  \
#   --input_file=training_data/amaan/S4.tfrecord \
#   --output_dir=models/amaan/S4 \
#   --do_train=True \
#   --do_eval=True  \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=uncased_L-6_H-128_A-2/bert_model.ckpt \
#   --train_batch_size=4  \
#  --max_seq_length=32  \
#  --max_predictions_per_seq=20  \
#  --num_train_steps=10000  \
#  --num_warmup_steps=10  \
#  --gpu=0  \
#  --learning_rate=2e-5 > logs/amaan/trainS4.log &

# wait
# echo "pre-training data s4 run."
# echo "pre-training data done."

# # Extract embeddings for benign data.
# nohup python -u extract_multi_process2.py \
#   --input_file=training_data/amaan/S1_benign \
#   --output_file=embedding_data/amaan/S1_benign.json  \
#   --vocab_file=training_data/amaan/vocab_atlas_single1.txt \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=models/amaan/S1/model.ckpt-10000 \
#   --layers=-1  \
#   --gpu=0  \
#   --max_seq_length=32 \
#   --batch_size=2048 > logs/amaan/extract_S1.log &

# wait
# echo "extract s1 done."

# nohup python -u extract_multi_process2.py \
#   --input_file=training_data/amaan/S2_benign \
#   --output_file=embedding_data/amaan/S2_benign.json  \
#   --vocab_file=training_data/amaan/vocab_atlas_single2.txt \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=models/amaan/S2/model.ckpt-10000 \
#   --layers=-1  \
#   --gpu=0  \
#   --max_seq_length=32 \
#   --batch_size=2048 > logs/amaan/extract_S2.log &

# wait
# echo "extract s2 done."

# nohup python -u extract_multi_process2.py \
#   --input_file=training_data/amaan/S3_benign \
#   --output_file=embedding_data/amaan/S3_benign.json  \
#   --vocab_file=training_data/amaan/vocab_atlas_single3.txt \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=models/amaan/S3/model.ckpt-10000 \
#   --layers=-1  \
#   --gpu=0  \
#   --max_seq_length=32 \
#   --batch_size=2048 > logs/amaan/extract_S3.log &

# wait
# echo "extract s3 done."

# nohup python -u extract_multi_process2.py \
#   --input_file=training_data/amaan/S4_benign \
#   --output_file=embedding_data/amaan/S4_benign.json  \
#   --vocab_file=training_data/amaan/vocab_atlas_single4.txt \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=models/amaan/S4/model.ckpt-10000 \
#   --layers=-1  \
#   --gpu=0  \
#   --max_seq_length=32 \
#   --batch_size=2048 > logs/amaan/extract_S4.log &

# wait
# echo "extract s4 done."

# # Extract embeddings for test data.
#   nohup python -u extract_multi_process2.py \
#   --input_file=training_data/amaan/S1_test \
#   --output_file=embedding_data/amaan/S1_test.json  \
#   --vocab_file=training_data/amaan/vocab_atlas_single1.txt \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=models/amaan/S1/model.ckpt-10000 \
#   --layers=-1  \
#   --gpu=0  \
#   --max_seq_length=32 \
#   --batch_size=2048 > logs/amaan/extract_S1_test.log &

# wait
# echo "test data s1 done."

#   nohup python -u extract_multi_process2.py \
#   --input_file=training_data/amaan/S2_test \
#   --output_file=embedding_data/amaan/S2_test.json  \
#   --vocab_file=training_data/amaan/vocab_atlas_single2.txt \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#     --init_checkpoint=models/amaan/S2/model.ckpt-10000 \
#   --layers=-1  \
#   --gpu=0  \
#   --max_seq_length=32 \
#   --batch_size=2048 > logs/amaan/extract_S2_test.log &

# wait
# echo "test data s2 done."

# nohup python -u extract_multi_process2.py \
#   --input_file=training_data/amaan/S3_test \
#   --output_file=embedding_data/amaan/S3_test.json  \
#   --vocab_file=training_data/amaan/vocab_atlas_single3.txt \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#    --init_checkpoint=models/amaan/S3/model.ckpt-10000 \
#   --layers=-1  \
#   --gpu=0  \
#   --max_seq_length=32 \
#   --batch_size=2048 > logs/amaan/extract_S3_test.log &

# wait
# echo "test data s3 done."

#   nohup python -u extract_multi_process2.py \
#   --input_file=training_data/amaan/S4_test \
#   --output_file=embedding_data/amaan/S4_test.json  \
#   --vocab_file=training_data/amaan/vocab_atlas_single4.txt \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=models/amaan/S4/model.ckpt-10000 \
#   --layers=-1  \
#   --gpu=0  \
#   --max_seq_length=32 \
#   --batch_size=2048 > logs/amaan/extract_S4_test.log &

# wait
# echo "test data s4 done."
 
nohup python -u evaluate_onesvm_SDatasets_custom.py -flag 1 -nu 0.1 -gama 0.1 -gpu 0 -suffix amaan > logs/amaan/S1.log & wait
nohup python -u evaluate_onesvm_SDatasets_custom.py -flag 2 -nu 0.1 -gama 0.15 -gpu 0 -suffix amaan > logs/amaan/S2.log & wait
nohup python -u evaluate_onesvm_SDatasets_custom.py -flag 3 -nu 0.1 -gama 0.2 -gpu 0 -suffix amaan > logs/amaan/S3.log & wait
nohup python -u evaluate_onesvm_SDatasets_custom.py -flag 4 -nu 0.1 -gama 0.15 -gpu 0 -suffix amaan > logs/amaan/S4.log & wait