import React, { useState, useEffect } from 'react';
import { Container, Title, Paper} from '@mantine/core';
import { useSession } from 'next-auth/react';
import axios from 'axios';

export function SystemInfo() {
  const backendUrl = process.env.NEXT_PUBLIC_URL as string;
  const { data: session, status } = useSession();
  const [backendVer, setBackendVer] = useState('')
  const [databaseVer, setDatabaseVer] = useState('')

  const now = new Date();
  const config = {
    headers: {
      Authorization: 'Bearer ' + session?.user?.accessToken
    },
  };

  const [time, setTime] = useState(new Date());
  useEffect(() => {
    const timerId = setInterval(() => {
      setTime(new Date()); // 時刻を更新
    }, 1000); // 1000msごとに実行

    return () => clearInterval(timerId);
  }, []);

    // 時刻を表示する
    const hour = time.getHours();
    const min = time.getMinutes();
    const sec = time.getSeconds();

    const getVersion = async () => {
      try {
        const res = await axios.get(`${backendUrl}/systeminfo/get_systeminfo`, config);
        console.log(res.data)
        setBackendVer(res.data.backend_version)
        setDatabaseVer(res.data.database_version)
      } catch (err) {
        console.error("err:", err);
      }
    };
    useEffect(() => {
      if (status === 'authenticated') {
        getVersion();
      }
    }, []);

  return (
    <Container size={9000} my={40}>
      <Title>システム情報</Title>
      
      <Paper withBorder shadow="md" p={10} mt={10} radius="md">            
            <p>システムバージョン</p>
            <p>　-フロントエンド:ver.1.0</p>
            <p>　-バックエンド:{backendVer}</p>
            <p>　-データベース:{databaseVer}</p>
            <p>バックエンドURL:{backendUrl}</p>
            <p>システム時間:{hour}時{min}分{sec}秒</p>
      </Paper>
    </Container>
  );
}
