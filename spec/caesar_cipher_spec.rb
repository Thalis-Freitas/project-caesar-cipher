require 'spec_helper'
require 'caesar_cipher'

describe 'Caesar Cipher' do
  context '#convert_to_numbers' do
    it 'converte a string para um array de números' do
      expect(convert_to_numbers('What a string!')).to eq [48, 7, 0, 19, ' ', 0, ' ', 18, 19, 17, 8, 13, 6, '!']
    end
  end

  context '#apply_shift_factor' do
    it 'aplica o fator de deslocamento e retorna a posição final das letras' do
      expect(apply_shift_factor([48, 7, 0, 19, ' ', 0, ' ', 18, 19, 17, 8, 13, 6, '!'], 4))
        .to eq [26, 11, 4, 23, ' ', 4, ' ', 22, 23, 21, 12, 17, 10, '!']
    end
  end

  context '#caesar_cipher' do
    it 'modifica a string de acordo com o fator de deslocamento' do
      expect(caesar_cipher('What a string!', 5)).to eq 'Bmfy f xywnsl!'
      expect(caesar_cipher('Project: Caesar Cipher', 3)).to eq 'Surmhfw: Fdhvdu Flskhu'
      expect(caesar_cipher('Individuals and interactions over processes and tools', 11))
        .to eq 'Tyotgtoflwd lyo tyepclnetzyd zgpc acznpddpd lyo ezzwd'
      expect(caesar_cipher('Working software over comprehensive documentation', 25))
        .to eq 'Vnqjhmf rnesvzqd nudq bnloqdgdmrhud cnbtldmszshnm'
      expect(caesar_cipher('Customer collaboration over contract negotiation', 13))
        .to eq 'Phfgbzre pbyynobengvba bire pbagenpg artbgvngvba'
      expect(caesar_cipher('Responding to change over following a plan', 8))
        .to eq 'Zmaxwvlqvo bw kpivom wdmz nwttweqvo i xtiv'
    end
  end
end
