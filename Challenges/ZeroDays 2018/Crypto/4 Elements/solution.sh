n_value='0x00c047c29bf6f73b8880c9854edbc473978e6907847c04c487b60b00ac6e2142bc4ed3535878d0ddbfcbf7d066be0cfb3226782da82a529278bda677b5f41d476a9f40b64ad0a1f8c92c538fef5972652bb164ebe5dbe576e7feda7f0c3259d98fe0dc306ad29bfa5e180b7ac9d537cc346b1e5cc044768bc842e2a8744310b14190234e869e02946115764e08290fefb53d75bfab7a0c1fe1c7c5d81c0e5729cc7556dcaece5f67a0841d84e57138605d8a1e71241fd665d4e2f7bef667764c9a237d7a7ca2dcc8d1f955d7a102d145836927d8aedf7638e13d875da2057aed22f88f7990ed4d76195ef1ce7e29f354500fb00917b0d3bc376161a763e0970bcb'

e_value='0x00b0e995b240b1cb31d62514a5b0e8f8ddea26d2c6e000d6fe72cd7eca27ee2c63ec36de0999e7bb0fbc507f8bf8b322f04a9aea8f3e9988b0d4f5f451129159e34d31924815dbe176df74e70af7069cf56d9b88bc8ded7bd10b18e82a45ad8bd2a8b68f49ca0bbf7991b00642ec0e11b1ed191b87bfb63ef87c29e58a4b26719f63ccd0d023850fa03a80301ea6cd8751a22720bcdb5d9cb6436309f19051c58e9bc65f7c8d00f6cec491c8ea75eaa5cfead339887feefd1297c2fc90837f6a2dbeb79232fd583d444ddee9d9827327320bcf61f1bffce4b0a8b694c09d882ce7e3a52757783f82af0d052d8f9c53905624ef2ca9f5cf3475240a3c571604c221'

p_value='0x00e544bf7823df3b55bbb0674dae0883e1c6f94bf40a5cbf729ebb4e851df990a87bfa2cacda94c84494997f4cccebb596c290f696bb088dfe3fcef341853bc7893798ac6d7c1dffeb228808bec247d731d1be26078e7a6d55517eb79185d52fd7ee8bfe195d538667f71db2e130f28069587e910de73d0f44a9c6f8cb608ca47b'

q_value=$(python2 -c "print $n_value / $p_value")

python rsatool.py -p $p_value -q $q_value -d $e_value -o priv.pem

openssl rsautl -in flag.enc -decrypt -inkey priv.pem

# ZD2018{Show me your bits}

echo