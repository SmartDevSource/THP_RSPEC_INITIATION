def time_string(seconds)

  h_int = (seconds/3600)
  m_int = (seconds/60)%60
  s_int = (seconds%60)
  
  h_string = h_int.to_s
  m_string = m_int.to_s
  s_string = s_int.to_s

  (h_int < 10 ) ? h_string.insert(0,'0') : h_string.insert(0, '')
  (m_int < 10 ) ? m_string.insert(0,'0') : m_string.insert(0, '')
  (s_int < 10 ) ? s_string.insert(0,'0') : s_string.insert(0, '')

  return h_string+":"+m_string+":"+s_string

end