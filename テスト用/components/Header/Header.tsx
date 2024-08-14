import { Autocomplete, Group, Burger, rem,Drawer,TextInput,ActionIcon } from '@mantine/core';
import { useDisclosure } from '@mantine/hooks';
import { IconSearch } from '@tabler/icons-react';
// import { MantineLogo } from '@mantinex/mantine-logo';
import classes from './Header.module.css';
import { IoSearch } from "react-icons/io5";
import { IoSettingsOutline } from "react-icons/io5";


const links = [
  { link: '/about', label: 'Features' },
  { link: '/pricing', label: 'Pricing' },
  { link: '/learn', label: 'Learn' },
  { link: '/community', label: 'Community' },
];

export function HeaderSearch() {
//   const [opened, { close, open }] = useDisclosure(false);

  const items = links.map((link) => (
    <a
      key={link.label}
      href={link.link}
      className={classes.link}
      onClick={(event) => event.preventDefault()}
    >
      {link.label}
    </a>
  ));

  return (
    <header className={classes.header}>
      <div className={classes.inner}>

    ファイルパス：
      <TextInput
      placeholder="Box/Walls/管理/"
      value="Box/Walls/管理/"
      size="sm"
      w="400"
    />
    <div style={{ flexGrow: 1 }}></div>
    <TextInput
      leftSection={<IoSearch />}
      placeholder="検索"
      size="sm"
      radius="lg"
      w="250"
    />

    <Drawer position="right" title="Authentication">
        {/* Drawer content */}
    </Drawer>
    <ActionIcon variant="default" size="xl" radius="md" aria-label="Settings">
        <IoSettingsOutline />
    </ActionIcon>

        {/* <Group> */}
          {/* <Burger opened={opened} onClick={open} size="sm" hiddenFrom="sm" /> */}
          {/* <MantineLogo size={28} /> */}
        {/* </Group> */}

        {/* <Group>
          <Group ml={50} gap={5} className={classes.links} visibleFrom="sm">
            {items}
          </Group>
          <Autocomplete
            className={classes.search}
            placeholder="Search"
            leftSection={<IconSearch style={{ width: rem(16), height: rem(16) }} stroke={1.5} />}
            data={['React', 'Angular', 'Vue', 'Next.js', 'Riot.js', 'Svelte', 'Blitz.js']}
            visibleFrom="xs"
          />
        </Group> */}
      </div>
    </header>
  );
}