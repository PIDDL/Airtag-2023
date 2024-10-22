# !/bin/bash

# Reset directories for each run.
# directories=("./training_data/amaanmul" "./embedding_data/amaanmul" "./ground_data/amaanmul" "./models/amaanmul" "./logs/amaanmul")

# for dir in "${directories[@]}"; do
#     if [ -d "$dir" ]; then
#         rm -rf "$dir"
#     fi
# done
# for dir in "${directories[@]}"; do
#     mkdir -p "$dir"
# done

# # # Import training data files for MDatasets.
# nohup cp -r ./training_data/training_data_original/U_step \
#  ./training_data/training_data_original/Udatasets\
#  ./training_data/amaanmul &

# nohup cp ./training_data/training_data_original/M12_benign \
#  ./training_data/training_data_original/M34_benign \
#  ./training_data/training_data_original/M56_benign \
#  ./training_data/training_data_original/train_atlas_12.txt \
#  ./training_data/training_data_original/train_atlas_34.txt \
#  ./training_data/training_data_original/train_atlas_56.txt \
#  ./training_data/training_data_original/vocab_atlas_12.txt \
#  ./training_data/training_data_original/vocab_atlas_34.txt \
#  ./training_data/training_data_original/vocab_atlas_56.txt \
#  ./training_data/training_data_original/M121_test \
#  ./training_data/training_data_original/M122_test \
#  ./training_data/training_data_original/M123_test \
#  ./training_data/training_data_original/M124_test \
#  ./training_data/training_data_original/M341_test \
#  ./training_data/training_data_original/M342_test \
#  ./training_data/training_data_original/M343_test \
#  ./training_data/training_data_original/M344_test \
#  ./training_data/training_data_original/M561_test \
#     ./training_data/training_data_original/M562_test \
#     ./training_data/training_data_original/M563_test \
#     ./training_data/training_data_original/M564_test \
#  ./training_data/training_data_original/testing_preprocessed_logs_M1-CVE-2015-5122_windows_h1 \
#  ./training_data/training_data_original/testing_preprocessed_logs_M1-CVE-2015-5122_windows_h2 \
#  ./training_data/training_data_original/testing_preprocessed_logs_M2-CVE-2015-5119_windows_py_h1 \
#  ./training_data/training_data_original/testing_preprocessed_logs_M2-CVE-2015-5119_windows_py_h2 \
#  ./training_data/training_data_original/training_preprocessed_logs_M3-CVE-2015-3105_windows_py_h1 \
#  ./training_data/training_data_original/training_preprocessed_logs_M3-CVE-2015-3105_windows_py_h2 \
#  ./training_data/training_data_original/training_preprocessed_logs_M4-CVE_2018_8174_windows_h1 \
#  ./training_data/training_data_original/training_preprocessed_logs_M4-CVE_2018_8174_windows_h2 \
#   ./training_data/training_data_original/training_preprocessed_logs_M5-CVE-2017-0199_windows_py_h1 \
#  ./training_data/training_data_original/training_preprocessed_logs_M5-CVE-2017-0199_windows_py_h2 \
#  ./training_data/training_data_original/training_preprocessed_logs_M6-CVE-2017-11882_windows_h1 \
#  ./training_data/training_data_original/training_preprocessed_logs_M6-CVE-2017-11882_windows_h2 \
#  ./training_data/amaanmul &

# # Import ground data files for MDatasets.
# nohup cp ./ground_data/ground_data_original/M1h1_number.npy \
#  ./ground_data/ground_data_original/M1h2_number.npy \
#  ./ground_data/ground_data_original/M2h1_number.npy \
#  ./ground_data/ground_data_original/M2h2_number.npy \
#  ./ground_data/ground_data_original/M3h1_number.npy \
#  ./ground_data/ground_data_original/M3h2_number.npy \
#  ./ground_data/ground_data_original/M4h1_number.npy \
#  ./ground_data/ground_data_original/M4h2_number.npy \
#  ./ground_data/ground_data_original/M5h1_number.npy \
#  ./ground_data/ground_data_original/M5h2_number.npy \
#  ./ground_data/ground_data_original/M6h1_number.npy \
#  ./ground_data/ground_data_original/M6h2_number.npy \
#  ./ground_data/amaanmul &

# wait
# echo "data imports done."

# nohup python create_pretraining_data.py  \
#   --input_file=training_data/amaanmul/train_atlas_12.txt \
#   --output_file=training_data/amaanmul/M12.tfrecord \
#   --vocab_file=training_data/amaanmul/vocab_atlas_12.txt \
#   --do_lower_case=True \
#   --max_seq_length=32  \
#   --max_predictions_per_seq=20  \
#   --masked_lm_prob=0.15  \
#   --random_seed=12345  \
#   --dupe_factor=5 &

#  nohup python create_pretraining_data.py  \
#  --input_file=training_data/amaanmul/train_atlas_34.txt \
#  --output_file=training_data/amaanmul/M34.tfrecord \
#   --vocab_file=training_data/amaanmul/vocab_atlas_34.txt \
#   --do_lower_case=True \
#   --max_seq_length=32  \
#   --max_predictions_per_seq=20  \
#   --masked_lm_prob=0.15  \
#   --random_seed=12345  \
#   --dupe_factor=5 &

#    nohup python create_pretraining_data.py  \
#  --input_file=training_data/amaanmul/train_atlas_56.txt \
#  --output_file=training_data/amaanmul/M56.tfrecord \
#   --vocab_file=training_data/amaanmul/vocab_atlas_56.txt \
#   --do_lower_case=True \
#   --max_seq_length=32  \
#   --max_predictions_per_seq=20  \
#   --masked_lm_prob=0.15  \
#   --random_seed=12345  \
#   --dupe_factor=5 &

# wait
# echo "pre-training data created."

# nohup python -u run_pretraining.py  \
#   --input_file=training_data/amaanmul/M12.tfrecord \
#   --output_dir=models/amaanmul/M12  \
#   --do_train=True \
#   --do_eval=True  \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=uncased_L-6_H-128_A-2/bert_model.ckpt \
#   --train_batch_size=4  \
#  --max_seq_length=32  \
#  --max_predictions_per_seq=20  \
#  --num_train_steps=10000  \
#   --gpu=0  \
#  --num_warmup_steps=10  \
#  --learning_rate=2e-5 > logs/amaanmul/trainM12.log &

# wait
# echo "pre-training data m12 run."

# nohup python -u run_pretraining.py  \
#   --input_file=training_data/amaanmul/M34.tfrecord \
#   --output_dir=models/amaanmul/M34  \
#   --do_train=True \
#   --do_eval=True  \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=uncased_L-6_H-128_A-2/bert_model.ckpt \
#   --train_batch_size=4  \
#  --max_seq_length=32  \
#  --max_predictions_per_seq=20  \
#  --num_train_steps=10000  \
#   --gpu=0  \
#  --num_warmup_steps=10  \
#  --learning_rate=2e-5 > logs/amaanmul/trainM34.log &

# wait
# echo "pre-training data m34 run."

#  nohup python -u run_pretraining.py  \
#   --input_file=training_data/amaanmul/M56.tfrecord \
#   --output_dir=models/amaanmul/M56  \
#   --do_train=True \
#   --do_eval=True  \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=uncased_L-6_H-128_A-2/bert_model.ckpt \
#   --train_batch_size=4  \
#  --max_seq_length=32  \
#  --max_predictions_per_seq=20  \
#  --num_train_steps=10000  \
#   --gpu=0  \
#  --num_warmup_steps=10  \
#  --learning_rate=2e-5 > logs/amaanmul/trainM56.log &

# wait
# echo "pre-training data m56 run."
# echo "pre-training data done."

# # wait

# # # Extract embeddings for benign data.

# nohup python -u extract_multi_process2.py \
#   --input_file=training_data/amaanmul/M12_benign \
#   --output_file=embedding_data/amaanmul/M12_benign.json  \
#   --vocab_file=training_data/amaanmul/vocab_atlas_12.txt \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=models/amaanmul/M12/model.ckpt-10000 \
#   --layers=-1  \
#   --gpu=0  \
#   --max_seq_length=32 \
#   --batch_size=2048 > logs/amaanmul/extract_M12.log &

# wait
# echo "extract m12 done."

# nohup python -u extract_multi_process2.py \
#   --input_file=training_data/amaanmul/M34_benign \
#   --output_file=embedding_data/amaanmul/M34_benign.json  \
#   --vocab_file=training_data/amaanmul/vocab_atlas_34.txt \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=models/amaanmul/M34/model.ckpt-10000 \
#   --layers=-1  \
#   --gpu=0  \
#   --max_seq_length=32 \
#   --batch_size=2048 > logs/amaanmul/extract_M34.log &

# wait
# echo "extract m34 done."

#   nohup python -u extract_multi_process2.py \
#   --input_file=training_data/amaanmul/M56_benign \
#   --output_file=embedding_data/amaanmul/M56_benign.json  \
#   --vocab_file=training_data/amaanmul/vocab_atlas_56.txt \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=models/amaanmul/M56/model.ckpt-10000 \
#   --layers=-1  \
#   --gpu=0  \
#   --max_seq_length=32 \
#   --batch_size=2048 > logs/amaanmul/extract_M56.log &

# wait
# echo "extract m56 done."

# # # Extract embeddings for test data.
# nohup python -u extract_multi_process2.py \
#   --input_file=training_data/amaanmul/M121_test \
#   --output_file=embedding_data/amaanmul/M121_test.json  \
#   --vocab_file=training_data/amaanmul/vocab_atlas_12.txt \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=models/amaanmul/M12/model.ckpt-10000 \
#   --layers=-1  \
#   --gpu=0  \
#   --max_seq_length=32 \
#   --batch_size=2048 > logs/amaanmul/extract_M121_test.log &

# wait
# echo "test data m121 done."

# nohup python -u extract_multi_process2.py \
#   --input_file=training_data/amaanmul/M122_test \
#   --output_file=embedding_data/amaanmul/M122_test.json  \
#   --vocab_file=training_data/amaanmul/vocab_atlas_12.txt \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=models/amaanmul/M12/model.ckpt-10000 \
#   --layers=-1  \
#   --gpu=0  \
#   --max_seq_length=32 \
#   --batch_size=2048 > logs/amaanmul/extract_M122_test.log &

# wait
# echo "test data m122 done."

#   nohup python -u extract_multi_process2.py \
#   --input_file=training_data/amaanmul/M123_test \
#   --output_file=embedding_data/amaanmul/M123_test.json  \
#   --vocab_file=training_data/amaanmul/vocab_atlas_12.txt \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=models/amaanmul/M12/model.ckpt-10000 \
#   --layers=-1  \
#   --gpu=0  \
#   --max_seq_length=32 \
#   --batch_size=2048 > logs/amaanmul/extract_M123_test.log &

# wait
# echo "test data m123 done."

#   nohup python -u extract_multi_process2.py \
#   --input_file=training_data/amaanmul/M124_test \
#   --output_file=embedding_data/amaanmul/M124_test.json  \
#   --vocab_file=training_data/amaanmul/vocab_atlas_12.txt \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=models/amaanmul/M12/model.ckpt-10000 \
#   --layers=-1  \
#   --gpu=0  \
#   --max_seq_length=32 \
#   --batch_size=2048 > logs/amaanmul/extract_M124_test.log &

# wait
# echo "test data m124 done."
# # wait

# nohup python -u extract_multi_process2.py \
#   --input_file=training_data/amaanmul/M341_test \
#   --output_file=embedding_data/amaanmul/M341_test.json  \
#   --vocab_file=training_data/amaanmul/vocab_atlas_34.txt \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=models/amaanmul/M34/model.ckpt-10000 \
#   --layers=-1  \
#   --gpu=0  \
#   --max_seq_length=32 \
#   --batch_size=2048 > logs/amaanmul/extract_M341_test.log &

# wait
# echo "test data m341 done."


# nohup python -u extract_multi_process2.py \
#   --input_file=training_data/amaanmul/M342_test \
#   --output_file=embedding_data/amaanmul/M342_test.json  \
#   --vocab_file=training_data/amaanmul/vocab_atlas_34.txt \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=models/amaanmul/M34/model.ckpt-10000 \
#   --layers=-1  \
#   --gpu=0  \
#   --max_seq_length=32 \
#   --batch_size=2048 > logs/amaanmul/extract_M342_test.log &

# wait
# echo "test data m342 done."

#   nohup python -u extract_multi_process2.py \
#   --input_file=training_data/amaanmul/M343_test \
#   --output_file=embedding_data/amaanmul/M343_test.json  \
#   --vocab_file=training_data/amaanmul/vocab_atlas_34.txt \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=models/amaanmul/M34/model.ckpt-10000 \
#   --layers=-1  \
#   --gpu=0  \
#   --max_seq_length=32 \
#   --batch_size=2048 > logs/amaanmul/extract_M343_test.log &

# wait
# echo "test data m343 done."

#   nohup python -u extract_multi_process2.py \
#   --input_file=training_data/amaanmul/M344_test \
#   --output_file=embedding_data/amaanmul/M344_test.json  \
#   --vocab_file=training_data/amaanmul/vocab_atlas_34.txt \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=models/amaanmul/M34/model.ckpt-10000 \
#   --layers=-1  \
#   --gpu=0  \
#   --max_seq_length=32 \
#   --batch_size=2048 > logs/amaanmul/extract_M344_test.log &

# #   wait
# wait
# echo "test data m344 done."


#   nohup python -u extract_multi_process2.py \
#   --input_file=training_data/amaanmul/M561_test \
#   --output_file=embedding_data/amaanmul/M561_test.json  \
#   --vocab_file=training_data/amaanmul/vocab_atlas_56.txt \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=models/amaanmul/M56/model.ckpt-10000 \
#   --layers=-1  \
#   --gpu=0  \
#   --max_seq_length=32 \
#   --batch_size=2048 > logs/amaanmul/extract_M561_test.log &

# wait
# echo "test data m561 done."


# nohup python -u extract_multi_process2.py \
#   --input_file=training_data/amaanmul/M562_test \
#   --output_file=embedding_data/amaanmul/M562_test.json  \
#   --vocab_file=training_data/amaanmul/vocab_atlas_56.txt \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=models/amaanmul/M56/model.ckpt-10000 \
#   --layers=-1  \
#   --gpu=0  \
#   --max_seq_length=32 \
#   --batch_size=2048 > logs/amaanmul/extract_M562_test.log &

# wait
# echo "test data m562 done."

#   nohup python -u extract_multi_process2.py \
#   --input_file=training_data/amaanmul/M563_test \
#   --output_file=embedding_data/amaanmul/M563_test.json  \
#   --vocab_file=training_data/amaanmul/vocab_atlas_56.txt \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=models/amaanmul/M56/model.ckpt-10000 \
#   --layers=-1  \
#   --gpu=0  \
#   --max_seq_length=32 \
#   --batch_size=2048 > logs/amaanmul/extract_M563_test.log &

# wait
# echo "test data m563 done."

#   nohup python -u extract_multi_process2.py \
#   --input_file=training_data/amaanmul/M564_test \
#   --output_file=embedding_data/amaanmul/M564_test.json  \
#   --vocab_file=training_data/amaanmul/vocab_atlas_56.txt \
#   --bert_config_file=uncased_L-6_H-128_A-2/bert_config.json \
#   --init_checkpoint=models/amaanmul/M56/model.ckpt-10000 \
#   --layers=-1  \
#   --gpu=0  \
#   --max_seq_length=32 \
#   --batch_size=2048 > logs/amaanmul/extract_M564_test.log &

# wait
# echo "test data m564 done."

nohup python -u evaluate_onesvm_12_ground_modify.py -nu 0.08 -gama 0.3 -gpu 0 -suffix amaanmul > logs/amaanmul/M12.log & wait
nohup python -u evaluate_onesvm_34_ground_modify.py -nu 0.08 -gama 0.3 -gpu 0 -suffix amaanmul > logs/amaanmul/M34.log & wait
nohup python -u evaluate_onesvm_56_ground_modify.py -nu 0.08 -gama 0.3 -gpu 0 -suffix amaanmul > logs/amaanmul/M56.log & wait