'use client';
import { useState } from 'react';
import { useDisclosure, useCounter  } from '@mantine/hooks';
import { Table, Checkbox, TextInput, Group, FileButton, Text,Button, Modal, Badge,Grid,ActionIcon,Drawer } from '@mantine/core';
import { FiDownload } from "react-icons/fi";
import classes from './Storage.module.css';

const elements = [
  { position: '加藤かずまの秘密.zip', mass: "12.11GB", symbol: '圧縮ファイル', name: '2010/01/01 00:01' },
  { position: 'テーブル定義書.xlsx', mass: "4.07MB", symbol: 'エクセルファイル', name: '2024/03/10 14:12' },
  { position: 'システム開発', mass: "8.96GB", symbol: 'フォルダ', name: '2024/03/20 18:38' },
  { position: '経理', mass: "137.33GB", symbol: 'フォルダ', name: '2024/04/10 14:00' },
  { position: 'ワードプレスマニュアル', mass: "10.12GB", symbol: 'フォルダ', name: '2024/04/17 9:45' },
  { position: '押してください.exe', mass: "14.12KB", symbol: '実行ファイル', name: '2024/04/17 9:45' }, 
];

export function Demo() {
  // const [opened, { close, open }] = useDisclosure(false);
  const [count, { increment, decrement }] = useCounter(3, { min: 0 });

  const badges = Array(count)
    .fill(0)
    .map((_, index) => <Badge key={index}>Badge {index}</Badge>);
  const [selectedRows, setSelectedRows] = useState<string[]>([]);
  const rows = elements.map((element) => (
    <Table.Tr
      key={element.name}
      bg={selectedRows.includes(element.position) ? 'var(--mantine-color-blue-light)' : undefined}
    >
      <Table.Td>
        <Checkbox
          aria-label="Select row"
          checked={selectedRows.includes(element.position)}
          onChange={(event) =>
            setSelectedRows(
              event.currentTarget.checked
                ? [...selectedRows, element.position]
                : selectedRows.filter((position) => position !== element.position)
            )
          }
        />
      </Table.Td>
      <Table.Td>{element.position}</Table.Td>
      <Table.Td>{element.name}</Table.Td>
      <Table.Td>{element.symbol}</Table.Td>
      <Table.Td>{element.mass}</Table.Td>
    </Table.Tr>
  ));
  const [file, setFile] = useState<File | null>(null);
  return (
    <>
     {/* <Group> */}
     <Grid>
     <Grid.Col span={10}>
     <TextInput
      label="ファイルパス"
      leftSectionWidth={50}      
      rightSectionWidth={50}
      // placeholder="Box/Walls/管理/"
      value="Walls Dev/04_コーディング/06_テスト/02_結合テスト"
      size="sm"
    />
     </Grid.Col>
    
     <Grid.Col span={2} className={classes.downloadButton}>
        <div className={classes.downloadButton}>
          <Button rightSection={<FiDownload />}>ダウンロード</Button>
        </div>
     </Grid.Col>
     </Grid>

    {/*<div style={{ flexGrow: 1 }}></div>
    <TextInput
      leftSection={<IoSearch />}
      placeholder="検索"
      size="sm"
      radius="lg"
      w="250"
    /> */}
    {/* <Drawer opened={opened} onClose={close} position="right" title="Authentication"> */}
        {/* Drawer content */}
      {/* </Drawer> */}
    {/* <ActionIcon variant="default" size="xl" radius="md" aria-label="Settings" onClick={open}>
        <IoSettingsOutline />
    </ActionIcon> */}

    {/* </Group> */}
    {/* ライブラリReact-tableを使用する */}
    <Table>
      <Table.Thead>
        <Table.Tr>
          <Table.Th>選択</Table.Th>
          <Table.Th>ファイル名</Table.Th>
          <Table.Th>更新日時</Table.Th>
          <Table.Th>種類</Table.Th>
          <Table.Th>サイズ</Table.Th>
        </Table.Tr>
      </Table.Thead>
      <Table.Tbody>{rows}</Table.Tbody>
    </Table>

    <Group justify="center">
        <FileButton onChange={setFile} accept="image/png,image/jpeg">
          {(props) => <Button {...props}>ファイルアップロード</Button>}
        </FileButton>
      </Group>

      {file && (
        <Text size="sm" ta="center" mt="sm">
          Picked file: {file.name}
        </Text>
      )}
    </>
  );
}