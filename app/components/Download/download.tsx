'use client';
// react
import { useState, useEffect } from 'react';

// library
import { Table, Button, Paper, Container } from '@mantine/core';
import axios from 'axios';

// icons
import { saveAs } from 'file-saver';

interface FileData {
  id: number | null;
  file_name: string | null;
  file_size: string | null;
  extension_name: string | null;
  file_update_at: string | null;
}

interface Props {
  token: string; 
}

export function Download({ token }: Props) {
  const backendUrl = process.env.NEXT_PUBLIC_URL;
  const [fileData, setFileData] = useState<FileData | null>(null);
  const [loading, setLoading] = useState<boolean>(false);
  const [error, setError] = useState<string | null>(null);

  // ファイル情報取得
  useEffect(() => {
    if (!backendUrl) {
      setError('バックエンドのURLが設定されていません。');
      return;
    }

    setLoading(true);
    axios.post(`${backendUrl}/file/url_decode`, { token })
      .then((res) => {
        setFileData(res.data);
        setLoading(false);
      })
      .catch((err) => {
        setError('ファイルデータの取得に失敗しました。');
        setLoading(false);
        console.error(err);
      });
  }, [token, backendUrl]);

  // ファイルダウンロードの処理
  const downloadFile = () => {
    if (!backendUrl) {
      setError('バックエンドのURLが設定されていません。');
      return;
    }

    axios.post(`${backendUrl}/file/download_file_token`, { token }, { responseType: 'blob' })
      .then((res) => {
        let contentDisposition = res.headers['content-disposition']
        let fileName = decodeURI(contentDisposition.substring(contentDisposition.indexOf("''") + 2,
          contentDisposition.length
        )).replace(/\+/g, " ");
        console.log(fileName)
        const blob = new Blob([res.data], {
          type: 'application/octet-stream'
        });
        saveAs(blob, fileName);
      })
      .catch((err) => {
        setError('ファイルダウンロードに失敗しました。');
        console.error(err);
      });
  };

  if (loading) {
    return <div>データを読み込んでいます...</div>;
  }

  if (error) {
    return <div>{error}</div>;
  }

  return (
    <Container size={1020} my={40}>
      <Paper withBorder shadow="md" p={'sm'} mt={30} radius="md">
        <Table>
          <Table.Thead>
            <Table.Tr>
              <Table.Th w={120}>ファイル名</Table.Th>
              <Table.Th w={10}>サイズ</Table.Th>
              <Table.Th w={60}>種類</Table.Th>
              <Table.Th w={60}>更新日時</Table.Th>
              <Table.Th w={30}></Table.Th>
            </Table.Tr>
          </Table.Thead>
          <Table.Tbody>
            {fileData ? (
              <Table.Tr key={fileData.id}>
                <Table.Td>{fileData.file_name}</Table.Td>
                <Table.Td>{fileData.file_size}</Table.Td>
                <Table.Td>{fileData.extension_name}</Table.Td>
                <Table.Td>{fileData.file_update_at}</Table.Td>
                <Table.Td>
                  <Button variant="default" onClick={downloadFile}>
                    ダウンロード
                  </Button>
                </Table.Td>
              </Table.Tr>
            ) : (
              <Table.Tr key="no-data">
                <Table.Td colSpan={5}>ファイルが見つかりません。</Table.Td>
              </Table.Tr>
            )}
          </Table.Tbody>
        </Table>
      </Paper>
    </Container>
  );
}
